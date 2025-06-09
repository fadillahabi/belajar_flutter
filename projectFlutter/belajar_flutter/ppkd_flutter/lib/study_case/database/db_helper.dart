import 'package:path/path.dart';
import 'package:ppkd_flutter/study_case/model/siswa_model.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static Future<Database> dbSiswa() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'siswa.db'),
      onCreate: (db, version) {
        return db.execute('''CREATE TABLE siswa(
          id INTEGER PRIMARY KEY AUTOINCREMENT, 
          name TEXT, 
          umur INTEGER)''');
      },
      version: 1,
    );
  }

  Future<void> insertSiswa(SiswaModel siswa) async {
    final db = await DBHelper.dbSiswa();
    await db.insert(
      'siswa',
      siswa.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<SiswaModel>> getAllSiswa() async {
    final db = await DBHelper.dbSiswa();
    final List<Map<String, dynamic>> maps = await db.query('siswa');

    return List.generate(maps.length, (i) => SiswaModel.fromMap(maps[i]));
  }

  static Future<void> updateSiswa(SiswaModel siswa) async {
    final db = await DBHelper.dbSiswa();
    await db.update(
      'siswa',
      siswa.toMap(),
      where: 'id = ?',
      whereArgs: [siswa.id],
    );
  }

  static Future<void> deleteSiswa(int id) async {
    final db = await DBHelper.dbSiswa();
    await db.delete('siswa', where: 'id = ?', whereArgs: [id]);
  }
}

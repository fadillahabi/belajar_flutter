import 'package:path/path.dart';
import 'package:ppkd_flutter/tugas_flutter/tugas_11_package/model/olahraga_model.dart';
import 'package:sqflite/sqflite.dart';

class DbOlahraga {
  static Future<Database> dbOlahraga() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'peserta.db'),
      onCreate: (dbOR, version) {
        return dbOR.execute('''CREATE TABLE peserta(
          id INTEGER PRIMARY KEY AUTOINCREMENT, 
          nama TEXT, 
          umur INTEGER, 
          kota TEXT, 
          jenisOlahraga TEXT, 
          durasiKegiatan TEXT,
          frekuensiLatihan TEXT,
          prestasi TEXT)''');
      },
      version: 1,
    );
  }

  Future<void> insertOlahraga(OlahragaModel peserta) async {
    final dbOR = await DbOlahraga.dbOlahraga();
    await dbOR.insert(
      'peserta',
      peserta.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<OlahragaModel>> getAllPeserta() async {
    final dbOR = await DbOlahraga.dbOlahraga();
    final List<Map<String, dynamic>> maps = await dbOR.query('peserta');

    return List.generate(maps.length, (i) => OlahragaModel.fromMap(maps[i]));
  }

  static Future<void> updateOlahraga(OlahragaModel peserta) async {
    final db = await DbOlahraga.dbOlahraga();
    await db.update(
      'peserta',
      peserta.toMap(),
      where: 'id = ?',
      whereArgs: [peserta.id],
    );
  }

  static Future<void> deleteOlahraga(int id) async {
    final db = await DbOlahraga.dbOlahraga();
    await db.delete('peserta', where: 'id = ?', whereArgs: [id]);
  }
}

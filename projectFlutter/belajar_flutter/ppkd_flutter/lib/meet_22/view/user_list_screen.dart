import 'package:flutter/material.dart';
import 'package:ppkd_flutter/meet_11/constant/app_color.dart';
import 'package:ppkd_flutter/meet_22/API/get_user.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({super.key});
  static const String id = "/user_list_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72,
        backgroundColor: AppColor.blue12,
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text("GET API", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            FutureBuilder(
              future: getUsers(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasData) {
                  final users = snapshot.data!;
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      final user = users[index];
                      return ListTile(
                        title: Text('${user.firstName} ${user.lastName}'),
                        subtitle: Text('${user.email}'),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(('${user.avatar}')),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios, size: 14),
                        ),
                      );
                    },
                  );
                } else {
                  return Text('error: ${snapshot.error}');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:convert';

import 'package:bank_fvisng_admin/models/user.dart';
import 'package:bank_fvisng_admin/models/verify.dart';
import 'package:bank_fvisng_admin/utils/strings.dart';
import 'package:bank_fvisng_admin/utils/styles.dart';
import 'package:bank_fvisng_admin/utils/values.dart';
import 'package:bank_fvisng_admin/widgets/left_menu.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UsersPage extends StatefulWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  late Map<String, dynamic> userMap; 
  late Map<String, dynamic> verifyMap; 
  List<User> userList = []; 

  Future getList() async {
    final response = await http.get(
      getUserList,
      headers: Values.headers,
    );

    if (response.statusCode == 200) {
      verifyMap = jsonDecode(response.body);

      var verifyData = Verify.fromJSON(verifyMap);

      if (verifyData.status == ApiSTR.successTxt) {
        userMap = jsonDecode(response.body);
        for (var prodData in userMap['data']) {
          final products = User.fromMap(prodData);

          setState(() {
            prodList.add(products);
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Users')),
      body: const Center(
        child: Text('Users'),
      ),
      drawer: SideDrawer(),
      backgroundColor: Styles.primaryColor,
    );
  }
}

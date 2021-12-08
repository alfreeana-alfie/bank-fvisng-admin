import 'package:bank_fvisng_admin/utils/styles.dart';
import 'package:bank_fvisng_admin/widgets/left_menu.dart';
import 'package:flutter/material.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  late Map<String, dynamic> userMap; 
  List<Product> 

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

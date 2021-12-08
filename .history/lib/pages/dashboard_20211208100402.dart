import 'package:bank_fvisng_admin/utils/styles.dart';
import 'package:bank_fvisng_admin/widgets/left_menu.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(
        child: Text('My Page!'),
      ),
      drawer: SideDrawer(),
      backgroundColor: Styles.primaryColor,
    );
  }
}

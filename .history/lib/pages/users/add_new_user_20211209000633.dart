import 'package:bank_fvisng_admin/utils/strings.dart';
import 'package:bank_fvisng_admin/utils/styles.dart';
import 'package:bank_fvisng_admin/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddNewUserPage extends StatefulWidget {
  const AddNewUserPage({Key? key}) : super(key: key);

  @override
  _AddNewUserPageState createState() => _AddNewUserPageState();
}

class _AddNewUserPageState extends State<AddNewUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Main,
      backgroundColor: Styles.backgroundColor,
      body: Container(color: Styles.successColor),
    );
  }
}

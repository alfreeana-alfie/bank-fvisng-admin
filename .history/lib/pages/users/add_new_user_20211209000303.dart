import 'package:bank_fvisng_admin/utils/strings.dart';
import 'package:bank_fvisng_admin/utils/styles.dart';
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
      appBar: AppBar(
        backgroundColor: Styles.secondaryColor,
        centerTitle: false,
        title: Text(
          Str.addNewTxt,
          style: GoogleFonts.roboto(),
        ),
        elevation: 0.5,
      ),
      backgroundColor: Styles.backgroundColor,
      body: Container(color: Styles.successColor),
    );
  }
}

import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Styles.secondaryColor,
        centerTitle: false,
        title: Text(
          Str.addNewTxt,
          style: GoogleFonts.roboto(),
        ),
        elevation: 0.5,
      ),
  }
}
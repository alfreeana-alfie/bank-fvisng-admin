import 'package:bank_fvisng_admin/utils/strings.dart';
import 'package:bank_fvisng_admin/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({Key? key, required this.title}) : super(key: key);

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
    );
  }
}

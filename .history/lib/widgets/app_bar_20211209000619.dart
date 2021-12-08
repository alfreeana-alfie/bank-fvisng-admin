import 'package:bank_fvisng_admin/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(50.0),
      child: AppBar(
        backgroundColor: Styles.secondaryColor,
        centerTitle: false,
        title: Text(
          title,
          style: GoogleFonts.roboto(),
        ),
        elevation: 0.5,
      ),
    );
  }
}

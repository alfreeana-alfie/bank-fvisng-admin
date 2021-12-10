import 'package:bank_fvisng_admin/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewAppBar extends StatelessWidget {
  const ViewAppBar({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Styles.secondaryColor,
      centerTitle: false,
      title: Text(
        title,
        style: GoogleFonts.roboto(),
      ),
      elevation: 0.5,
      actions: [widgets],
    );
  }
}

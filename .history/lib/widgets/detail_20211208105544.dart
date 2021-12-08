import 'package:bank_fvisng_admin/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailRow extends StatelessWidget {
  const DetailRow({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            'Email',
            style: GoogleFonts.nunitoSans(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Styles.textColor
            ),),
          Text(':'),
          Text('Example.com'),
        ],
      ),
    );
  }
}
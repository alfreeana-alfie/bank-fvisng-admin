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
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Styles.textColor.withOpacity(0.4)
            ),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(':'),
          ),
          Text('Example.com'),
        ],
      ),
    );
  }
}
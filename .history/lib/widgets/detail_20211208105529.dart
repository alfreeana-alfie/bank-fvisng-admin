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
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color:
            ),),
          Text(':'),
          Text('Example.com'),
        ],
      ),
    );
  }
}
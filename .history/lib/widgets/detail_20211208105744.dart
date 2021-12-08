import 'package:bank_fvisng_admin/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailRow extends StatelessWidget {
  const DetailRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenlys
        children: [
          Text(
            'Email',
            style: GoogleFonts.nunitoSans(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Styles.textColor.withOpacity(0.4)),
          ),
          SizedBox(
            width: 12,
          ),
          Text(':'),
          SizedBox(
            width: 12,
          ),
          Text('Example.com'),
        ],
      ),
    );
  }
}

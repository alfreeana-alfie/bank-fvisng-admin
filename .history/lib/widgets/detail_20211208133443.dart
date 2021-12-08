import 'package:bank_fvisng_admin/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailRow extends StatelessWidget {
  const DetailRow({Key? key, required this.email, required this.phone, required this.branch, required this.status, required this.emailVerified, required this.smsVerified : super(key: key);

  final String email;
  final String phone;
  final String branch, status, emailVerified, smsVerified;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Container(
            width: 70,
            child: Text(
              'Email',
              style: GoogleFonts.nunitoSans(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Styles.textColor.withOpacity(0.3),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            ':',
            style: GoogleFonts.nunitoSans(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Styles.textColor.withOpacity(0.3),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'annkalina53@gmail.com',
            style: GoogleFonts.nunitoSans(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Styles.textColor.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }
}

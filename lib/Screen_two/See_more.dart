import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeeMore extends StatelessWidget {
  const SeeMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 28),
      child: Text(
        'See more',
        style: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color(0xff4838D1)
      ),
      ),
    );
  }
}

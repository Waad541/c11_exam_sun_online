import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallContainer extends StatelessWidget {
  String image;
  Color color;
  String text;
   SmallContainer({required this.text,required this.image,required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 151,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Image.asset('$image'),
            SizedBox(width: 15),
            Text('$text',style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: 14
            ))

          ],
        ),
      ),
    );
  }
}

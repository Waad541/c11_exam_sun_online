import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryChoice extends StatefulWidget {
  String text;
   CategoryChoice({required this.text});

  @override
  State<CategoryChoice> createState() => _CategoryChoiceState();
}

class _CategoryChoiceState extends State<CategoryChoice> {
  bool isSelect=false;
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
        label: Text(
          '${widget.text}',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 16
          )
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
             color: Colors.white
          )
        ),
        backgroundColor: Color(0xffF5F5FA),
        selected: isSelect,
      showCheckmark: false,
      onSelected: (index){
          isSelect=index;
          setState(() {

          });
      },
      selectedColor: Color(0xff5544f8),
    );
  }
}

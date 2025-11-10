import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardResult extends StatelessWidget {
  final String title;
  final String result;
  final Color color;

  const CardResult({
    super.key,
    required this.title,
    required this.result,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10
      ),

      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20)
      ),

      child: Column(
        spacing: 10,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),

          Text(
            result,
            style: GoogleFonts.poppins(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

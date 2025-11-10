import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardShape extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onTap;

  const CardShape({
    super.key,
    required this.image,
    required this.title,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 30,
          bottom: 20
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          spacing: 15,
          children: [
            Expanded(
              child: Image.asset(
                image,
              ),
            ),

            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400
              ),
            )
          ],
        ),
      ),
    );
  }
}

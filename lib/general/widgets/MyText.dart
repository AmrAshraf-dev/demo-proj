import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  final String title;
  final Color? color;
  final double? size;
  final String? fontFamily;
  final TextAlign? alien;
  final TextDecoration? decoration;
  final TextOverflow? overflow;
  final FontWeight? fontWeight;

  const MyText(
      {Key? key,
      required this.title,
      required this.color,
      required this.size,
      this.alien,
      this.fontFamily,
      this.decoration,
      this.overflow,
      this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: alien ?? TextAlign.start,
      textScaleFactor: 1.2,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: size ?? 16,
        decoration: decoration ?? TextDecoration.none,
        fontWeight: fontWeight ?? (FontWeight.w500),
        fontFamily: GoogleFonts.tajawal().fontFamily,
      ),
      overflow: overflow,
    );
  }
}

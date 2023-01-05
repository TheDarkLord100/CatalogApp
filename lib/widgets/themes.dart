import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context)=>ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.amber,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme,
        )
  );

  static ThemeData darkTheme(BuildContext context)=>ThemeData(
     brightness: Brightness.dark,
  );

  static Color creamColor=Color(0xfff5f5f5);
  static Color darkBlueishColor=Color(0xff403b58);
}

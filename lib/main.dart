import 'package:flutter/material.dart';
import 'package:flutter_ui/view/emailverification.dart';
import 'package:flutter_ui/view/login.dart';
import 'package:flutter_ui/view/ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.openSans().fontFamily,
        primarySwatch: Colors.blue,
      ),
      home: UI(),
    );
  }
}

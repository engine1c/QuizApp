import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:flutter_application_1/pages/home.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  debugPaintSizeEnabled = false;
 return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'QUIZ App',
      // theme: ThemeData(
      //   primarySwatch: Colors.indigo,
      //   fontFamily: 'ReggaeOne',
      //   // textTheme:  GoogleFonts.openSansCondensedTextTheme(
      //   //   Theme.of(context).textTheme
      //   //),
      // ),

      home: HomePage(),
    );
  }
}

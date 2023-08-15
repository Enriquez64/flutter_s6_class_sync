
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s6_class_zync/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.dmSansTextTheme(),
      ),
      home: HomePage(),
    );
  }
}

class Mandarina extends StatelessWidget {
  List<String> names = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hola"),
      ),
      body: Column(
        children: [
          Text("Listado de Containers"),
          Container(
            color: Colors.black,
            width: double.infinity,
            height: 200,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int pepito) {
                return Container(
                  margin: EdgeInsets.all(20.0),
                  color: Colors.red,
                  height: 200,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
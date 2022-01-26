import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/config/theme.dart';
import 'package:web_portfolio/sections/header/header.dart';
import 'package:web_portfolio/sections/myTecnology/my_tecnology.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          const Header(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(right: 150.0, top: 20),
              child: Text(
                'Skills',
                style: GoogleFonts.rockSalt(
                  color: AppTheme.textPrimaryColordark,
                  fontSize: 25,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          const MyTecnology(),
        ],
      ),
    );
  }
}

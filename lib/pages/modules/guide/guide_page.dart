import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/utils/export.dart';

class GuidePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GuidePageState();
  }
}

class _GuidePageState extends State<GuidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
        title: Text(titleGuide),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: ExpandablePanel(
              header: Padding(
                padding: const EdgeInsets.only(left: 11, top: 10),
                child: Text(
                  'Como é Marte?',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              collapsed: Text(''),
              expanded: Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Column(
                  children: [
                    Text(mars,
                      style: GoogleFonts.roboto(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: ExpandablePanel(
              header: Padding(
                padding: const EdgeInsets.only(left: 11, top: 10),
                child: Text(
                  'O que fazer em Marte?',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              collapsed: Text(''),
              expanded: Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Column(
                  children: [
                    Text(toDoMars,
                      style: GoogleFonts.roboto(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: ExpandablePanel(
              header: Padding(
                padding: const EdgeInsets.only(left: 11, top: 10),
                child: Text(
                  'Prepare-se para a gravidade!',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              collapsed: Text(''),
              expanded: Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Column(
                  children: [
                    Text(gravity,
                      style: GoogleFonts.roboto(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

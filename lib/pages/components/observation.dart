import 'package:flutter/material.dart';

class PageTrip extends StatelessWidget {
  final String title;
  final Widget body;
  final FloatingActionButton botao;

  const PageTrip({
    required this.title,
    required this.body,
    required this.botao,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
        title: Text(title),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: botao,
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 45.0, right: 45.0),
        child: SingleChildScrollView(child: body),
      ),
    );
  }
}

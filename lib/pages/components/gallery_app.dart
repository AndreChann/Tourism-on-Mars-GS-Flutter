import 'package:flutter/material.dart';
import 'package:space/utils/export.dart';
import '../modules/gallery/gallery.dart';

class GalleryApp extends StatefulWidget {
  const GalleryApp({Key? key}) : super(key: key);

  @override
  State<GalleryApp> createState() => _GalleryAppState();
}

class _GalleryAppState extends State<GalleryApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(titleGallery),
        backgroundColor: Colors.grey.shade900,
      ),
      body: GalleryMars(),
    );
  }
}

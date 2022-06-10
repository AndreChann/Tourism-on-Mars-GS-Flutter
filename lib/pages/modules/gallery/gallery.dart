import 'package:flutter/material.dart';

class GalleryMars extends StatefulWidget {
  @override
  _GalleryMarsState createState() => _GalleryMarsState();
}

class _GalleryMarsState extends State<GalleryMars> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.grey.shade900,
                  ),
                  body: Center(
                    child: Image.asset(
                      'assets/images/img' + (index + 1).toString() + '.jpeg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  backgroundColor: Colors.black,
                );
              },
            ),
          );
        },
        child: Image.asset(
          'assets/images/img' + (index + 1).toString() + '.jpeg',
          fit: BoxFit.fill,
        ),
      ),
      itemCount: 12,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pics/src/models/photo.dart';

class ImageList extends StatelessWidget {
  List<Photo> images = [];

  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(Photo image) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Padding(
            child: Image.network(image.url.toString()),
            padding: EdgeInsets.only(bottom: 8.0),
          ),
          Text(image.title.toString())
        ],
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key,required this.imageUrl});
final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.8/4,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageUrl,
          errorWidget:(context, url, error) =>Icon(Icons.error) , ),
        ),
      ),
    );
  }
}

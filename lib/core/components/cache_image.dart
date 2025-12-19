import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:market/core/components/custom_circular_progress_indicator.dart';

class CacheImage extends StatelessWidget {
  const CacheImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      placeholder: (context, url) => CustomCircularProgressIndicator(),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market/core/resource/app_colors.dart';

class CustomProfilePhoto extends StatelessWidget {
  const CustomProfilePhoto({super.key, required this.imgUrl});
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: 150.w,
        height: 150.h,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: CachedNetworkImageProvider(
                imgUrl,
              ),
            ),
            Positioned(
              bottom: -3,
              right: 0,
              child: CircleAvatar(
                radius: 20.h,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.camera_alt,
                  size: 20,
                  color: AppColors.kPrimaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

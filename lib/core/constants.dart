import 'package:flutter/material.dart';
import 'package:market/features/favorite/presentation/favorite.dart';
import 'package:market/features/home/presentation/views/home_body.dart';
import 'package:market/features/profile/presentation/views/profile.dart';
import 'package:market/features/store/presentation/views/store.dart';

class Constants {
  static const List<Widget> views = [
    HomeBody(),
    Store(),
    Favorite(),
    Profile(),
  ];
}

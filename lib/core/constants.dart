import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:market/features/favorite/presentation/favorite.dart';
import 'package:market/features/home/presentation/views/home_body.dart';
import 'package:market/features/home/presentation/widgets/category.dart';
import 'package:market/features/profile/presentation/views/profile.dart';
import 'package:market/features/store/presentation/views/store.dart';

class Constants {
  static List<Widget> views = [HomeBody(), Store(), Favorite(), Profile()];
  static List<Categoryss> popularCategory = [
    Categoryss(icon: Icons.sports, categoryName: 'Sports'),
    Categoryss(icon: Icons.computer, categoryName: 'Electroics'),
    Categoryss(icon: Icons.book, categoryName: 'Sports'),
    Categoryss(icon: Icons.games, categoryName: 'Games'),
    Categoryss(icon: Icons.bike_scooter, categoryName: 'Bikes'),
  ];
}

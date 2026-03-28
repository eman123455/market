import 'package:flutter/material.dart';
import 'package:market/features/favorite/presentation/views/favorite.dart';
import 'package:market/features/home/presentation/views/home_body.dart';
import 'package:market/features/home/presentation/widgets/category.dart';
import 'package:market/features/settings/presentation/views/settings.dart';
import 'package:market/features/store/presentation/views/store.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Constants {
  static List<Widget> views = [HomeBody(), Store(), Favorite(), Settings()];
  static List<Categoryss> popularCategory = [
    Categoryss(icon: Icons.sports, categoryName: 'Sports'),
    Categoryss(icon: Icons.computer, categoryName: 'Electroics'),
    Categoryss(icon: Icons.book, categoryName: 'Sports'),
    Categoryss(icon: Icons.games, categoryName: 'Games'),
    Categoryss(icon: Icons.bike_scooter, categoryName: 'Bikes'),
  ];
   static SupabaseClient client = Supabase.instance.client;
}

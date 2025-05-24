import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s_rocks_music_homepage/core/di/service_locator.dart';
import 'view/screens/home/home_screen.dart';
import 'view/screens/home/home_view_model.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => locator<HomeViewModel>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'S.Rocks Music',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
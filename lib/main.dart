import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s_rocks_music_homepage/core/di/service_locator.dart';
import 'package:s_rocks_music_homepage/core/services/firestore_services.dart';
import 'package:s_rocks_music_homepage/view/screens/home/viewmodels/service_view_model.dart';
import 'view/screens/home/home_screen.dart';
import 'view/screens/home/home_view_model.dart';


void main() {
  setupLocator();
  runApp(
    MultiProvider(
      providers: [
        Provider<FirestoreService>(
          create: (_) => FirestoreService(FirebaseFirestore.instance),
        ),
        ChangeNotifierProxyProvider<FirestoreService, ServiceViewModel>(
          create: (context) => ServiceViewModel(context.read<FirestoreService>()),
          update: (context, firestoreService, previous) =>
              ServiceViewModel(firestoreService),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => sl<HomeViewModel>()),
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
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s_rocks_music_homepage/view/screens/splash/splash_screen.dart';

import 'core/di/service_locator.dart';
import 'core/services/firestore_services.dart';
import 'firebase_options.dart';
import 'view/screens/home/home_view_model.dart';
import 'view/screens/home/viewmodels/service_view_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  setupLocator();

  runApp(
    MultiProvider(
      providers: [
        Provider<FirestoreService>(
          create: (_) => FirestoreService(FirebaseFirestore.instance),
        ),
        ChangeNotifierProvider(create: (_) => sl<HomeViewModel>()),
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'S Rocks Music',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}
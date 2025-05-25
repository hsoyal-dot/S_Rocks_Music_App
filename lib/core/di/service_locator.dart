import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:s_rocks_music_homepage/core/services/firestore_services.dart';
import 'package:s_rocks_music_homepage/view/screens/home/home_view_model.dart';
import 'package:s_rocks_music_homepage/view/screens/home/viewmodels/service_view_model.dart';


final sl = GetIt.instance;

void setupLocator() {
  sl.registerLazySingleton(() => FirebaseFirestore.instance);
  sl.registerLazySingleton(() => FirestoreService(sl()));
  sl.registerFactory(() => HomeViewModel());
  sl.registerFactory(() => ServiceViewModel(sl()));
}
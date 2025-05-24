import 'package:flutter/material.dart';
import 'package:s_rocks_music_homepage/core/services/firestore_services.dart';
import 'package:s_rocks_music_homepage/data/models/service_model.dart';

class ServiceViewModel extends ChangeNotifier {
  final FirestoreService _firestoreService;

  ServiceViewModel(this._firestoreService);

  List<ServiceModel> _services = [];
  bool _isLoading = false;
  String? _error;

  List<ServiceModel> get services => _services;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> fetchServices() async {
    _isLoading = true;
    notifyListeners();

    try {
      _services = await _firestoreService.fetchServices();
      _error = null;
    } catch (e) {
      _error = e.toString();
    }
    _isLoading = false;
    notifyListeners();
  }
}

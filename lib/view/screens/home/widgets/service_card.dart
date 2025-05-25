import 'package:flutter/material.dart';
import 'package:s_rocks_music_homepage/data/models/home/service_model.dart';

class ServiceCard extends StatelessWidget {
  final ServiceModel service;

  const ServiceCard({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(service.iconAsset),
        title: Text(service.title),
        subtitle: Text(service.description),
      ),
    );
  }
}
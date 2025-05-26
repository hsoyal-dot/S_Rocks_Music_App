import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceDetailPage extends StatelessWidget {
  final String serviceTitle;

  const ServiceDetailPage({super.key, required this.serviceTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(24, 23, 28, 1),
      ),
      backgroundColor: const Color.fromRGBO(24, 23, 28, 1),
      body: Center(
        child: Text(
          'You Tapped on: $serviceTitle',
          style: GoogleFonts.syne(color: Colors.white, fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
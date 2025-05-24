import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s_rocks_music_homepage/view/screens/home/hero_section.dart';
import 'package:s_rocks_music_homepage/view/screens/home/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFF0D0D0D),
      // bottomNavigationBar: const _BottomNavBar(),
      body: Stack(
        children: [
          Positioned.fill(
            top: size.height * 0.38,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'Hire hand-picked Pros for popular music services',
                    style: GoogleFonts.syne(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // ServiceSection(),
                ],
              ),
            ),
          ),
          Container(
            height: size.height * 0.37,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(169, 1, 64, 1),
                  Color.fromRGBO(85, 1, 32, 1)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
            // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + 19,
              left: 20,
              right: 20,
              bottom: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TopBar(),
                SizedBox(height: 18),
                HeroSection(),
                ],
            ),
          ),
        ],
      ),
    );
  }
}

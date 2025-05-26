import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s_rocks_music_homepage/view/screens/home/service_section.dart';
import 'package:s_rocks_music_homepage/view/screens/home/widgets/bottom_nav_bar.dart';
import 'package:s_rocks_music_homepage/view/screens/home/hero_section.dart';
import 'package:s_rocks_music_homepage/view/screens/home/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      backgroundColor: const Color.fromRGBO(24, 23, 28, 1),
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: size.height * 0.37,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(169, 1, 64, 1),
                      Color.fromRGBO(85, 1, 32, 1),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 19,
                  left: 20,
                  right: 20,
                  bottom: 16,
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [TopBar(), SizedBox(height: 18), HeroSection()],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 24,
                  ),
                  color: const Color.fromRGBO(24, 23, 28, 1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Hire hand-picked Pros for popular music services',
                        style: GoogleFonts.syne(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Padding(
                        padding: EdgeInsets.fromLTRB(14,0,14,0),
                        child: ServiceSection()
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

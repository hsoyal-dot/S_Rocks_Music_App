import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s_rocks_music_homepage/core/assets/app_images.dart';
import 'package:s_rocks_music_homepage/core/assets/app_vectors.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 45,
            child: TextField(
              decoration: InputDecoration(
                floatingLabelAlignment: FloatingLabelAlignment.center,
                hintText: 'Search "Punjabi Lyrics"',
                hintStyle: GoogleFonts.syne(
                  color: Color.fromRGBO(97, 97, 107, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                filled: true,
                fillColor: const Color.fromRGBO(47, 47, 57, 1),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(AppVectors.search),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(AppVectors.mic),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 15),
        CircleAvatar(
          radius: 20,
          child:
              Image.asset(AppImages.avatar, width: 34, height: 34),
        ),
      ],
    );
  }
}

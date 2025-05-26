import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:s_rocks_music_homepage/core/assets/app_images.dart';
import 'package:s_rocks_music_homepage/core/assets/app_vectors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(24, 23, 28, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        border: Border(
          top: BorderSide(color: Color.fromRGBO(44, 45, 49, 1), width: 1.0),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Theme(
          data: Theme.of(context).copyWith(
            splashFactory: NoSplash.splashFactory,
            highlightColor: Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() => _currentIndex = index);
              },
              backgroundColor: Colors.transparent,
              elevation: 0,
              selectedItemColor: Colors.white,
              unselectedItemColor: const Color.fromRGBO(97, 97, 107, 1),
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: _buildNavIcon(AppImages.home, 0),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: _buildNavIcon(AppVectors.news, 1),
                  label: 'News',
                ),
                BottomNavigationBarItem(
                  icon: _buildNavIcon(AppVectors.trackbox, 2),
                  label: 'TrackBox',
                ),
                BottomNavigationBarItem(
                  icon: _buildNavIcon(AppVectors.projects, 3),
                  label: 'Projects',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavIcon(String asset, int index) {
    final bool isSelected = _currentIndex == index;

    final bool isPng = asset.endsWith('.png');

    return SizedBox(
      height: 40,
      width: 40,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          if (isSelected)
            Positioned(
              top: -16,
              child: Container(
                width: 15,
                height: 15,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
            ),

          isPng
              ? ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    isSelected
                        ? Colors.white
                        : const Color.fromRGBO(97, 97, 107, 1),
                    BlendMode.srcIn,
                  ),
                  child: Image.asset(asset, height: 22, width: 22),
                )
              : SvgPicture.asset(
                  asset,
                  height: 20,
                  width: 20,
                  colorFilter: ColorFilter.mode(
                    isSelected
                        ? Colors.white
                        : const Color.fromRGBO(97, 97, 107, 1),
                    BlendMode.srcIn,
                  ),
                ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class BottomHomeAppBar extends StatefulWidget {
  const BottomHomeAppBar({super.key});

  @override
  State<BottomHomeAppBar> createState() => _BottomAppBarState();
}

class _BottomAppBarState extends State<BottomHomeAppBar> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    return
    // BottomNavigationBar(
    //   items: [
    //     BottomNavigationBarItem(
    //       icon: Image.asset(
    //         'assets/icons/home-line.png',
    //         width: 25.152,
    //         height: 25.152,
    //         fit: BoxFit.contain,
    //       ),
    //       label: 'Home',
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Image.asset(
    //         'assets/icons/heart.png',
    //         width: 25.152,
    //         height: 25.152,
    //         fit: BoxFit.contain,
    //       ),
    //       label: 'Favorites',
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Image.asset(
    //         'assets/icons/receipt-check.png',
    //         width: 25.152,
    //         height: 25.152,
    //         fit: BoxFit.contain,
    //       ),
    //       label: 'Profile',
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Image.asset(
    //         'assets/icons/user-01.png',
    //         width: 25.152,
    //         height: 25.152,
    //         fit: BoxFit.contain,
    //       ),
    //       label: 'Profile',
    //     ),
    //   ],
    //   // width: 339.04,
    //   // height: 67.07,
    //   // margin: EdgeInsets.all(19),
    //   // padding: const EdgeInsets.only(
    //   //   top: 8.38,
    //   //   left: 8.38,
    //   //   right: 25.15,
    //   //   bottom: 8.38,
    //   // ),
    //   // decoration: BoxDecoration(
    //   //   color: Colors.black,
    //   //   borderRadius: BorderRadius.all(Radius.circular(104)),
    //   // ),
    // );
    // Container(height: 100, color: Colors.black);
    // GNav(
    //   rippleColor: Colors.grey, // tab button ripple color when pressed
    //   hoverColor: Colors.grey, // tab button hover color
    //   haptic: true, // haptic feedback
    //   tabBorderRadius: 15,
    //   tabActiveBorder: Border.all(
    //     color: Colors.black,
    //     width: 1,
    //   ), // tab button border
    //   tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
    //   tabShadow: [
    //     BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8),
    //   ], // tab button shadow
    //   curve: Curves.easeOutExpo, // tab animation curves
    //   duration: Duration(milliseconds: 900), // tab animation duration
    //   gap: 8, // the tab button gap between icon and text
    //   color: Colors.grey[800], // unselected icon color
    //   activeColor: Colors.purple, // selected icon and text color
    //   iconSize: 24, // tab button icon size
    //   tabBackgroundColor: Colors.purple.withOpacity(
    //     0.1,
    //   ), // selected tab background color
    //   padding: EdgeInsets.symmetric(
    //     horizontal: 20,
    //     vertical: 5,
    //   ), // navigation bar padding
    //   tabs: [
    //     GButton(icon: LineIcons.home, text: 'Home'),
    //     GButton(icon: LineIcons.heart, text: 'Likes'),
    //     GButton(icon: LineIcons.search, text: 'Search'),
    //     GButton(icon: LineIcons.user, text: 'Profile'),
    //   ],
    // );
    Padding(
      padding: const EdgeInsets.only(
        left: 8.38,
        right: 25.15,
        bottom: 8.38,
        top: 8.38,
      ),
      child: Container(
        height: 67.0719985961914,
        // color: Colors.black,
        decoration: BoxDecoration(
          color: Colors.black,
          // border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(104.8)),
        ),
        child: GNav(
          rippleColor: Color(0xFF77EF67)!,
          hoverColor: Color(0xFF77EF67)!,
          gap: 8,
          activeColor: Colors.black,
          iconSize: 24,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          duration: Duration(milliseconds: 400),
          tabBackgroundColor: Color(0xFF77EF67)!,
          color: Color(0xFFDFE1E7),
          tabs: [
            GButton(icon: LineIcons.home, text: 'Home'),
            GButton(icon: LineIcons.heart, text: 'Likes'),
            GButton(
              icon: LineIcons.cog,
              leading: Image.asset(
                'assets/icons/receipt-check.png',
                width: 20,
                height: 20,
                fit: BoxFit.contain,
                color: Colors.black,
              ),
              text: 'Search',
            ),
            GButton(
              icon: LineIcons.cog,
              leading: Image.asset(
                'assets/icons/user-01.png',
                width: 20,
                height: 20,
                fit: BoxFit.contain,
              ),
              text: 'Profile',
            ),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}

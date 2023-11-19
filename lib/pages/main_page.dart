import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../lessons/about_grid_view.dart';
import '../lessons/lesson_custom_scroll_view.dart';
import 'inbox/inbox_page.dart';
import 'profile/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  late final PageController _pageController;

  final List<Widget> _pages = [
    LessonAboutCustomScrollView(),
    AboutGridView(),
    InboxPage(),
    ProfilePage(),
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: _currentIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("TikTok"),
      // ),
      body: PageView.builder(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        itemCount: _pages.length,
        itemBuilder: (context, index) {
          return _pages[index];
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        padding: EdgeInsets.zero,
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              splashColor: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(4),
              onTap: () {
                setState(() {
                  _currentIndex = 0;
                  _pageController.jumpToPage(_currentIndex);
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 12,
                  right: 12,
                  bottom: 0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _currentIndex == 0
                        ? SvgPicture.asset(
                            "assets/icons/active/home_icon.svg",
                            width: 24,
                          )
                        : SvgPicture.asset(
                            "assets/icons/inactive/home_icon.svg",
                            width: 24,
                          ),
                    SizedBox(height: 2),
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(4),
              onTap: () {
                setState(() {
                  _currentIndex = 1;
                  _pageController.jumpToPage(_currentIndex);
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 10,
                  right: 10,
                  bottom: 0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _currentIndex == 1
                        ? SvgPicture.asset(
                            "assets/icons/active/dicover_icon.svg",
                            width: 24,
                          )
                        : SvgPicture.asset(
                            "assets/icons/inactive/dicover_icon.svg",
                            width: 24,
                          ),
                    SizedBox(height: 2),
                    Text(
                      "Friends",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 12,
                  right: 12,
                  bottom: 0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/active/post_icon.svg",
                      height: 28,
                    ),
                    Text(
                      "",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(4),
              onTap: () {
                setState(() {
                  _currentIndex = 2;
                  _pageController.jumpToPage(_currentIndex);
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 14,
                  right: 14,
                  bottom: 0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _currentIndex == 2
                        ? SvgPicture.asset(
                            "assets/icons/active/inbox_icon.svg",
                            width: 24,
                          )
                        : SvgPicture.asset(
                            "assets/icons/inactive/inbox_icon.svg",
                            width: 24,
                          ),
                    Text(
                      "Inbox",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(4),
              onTap: () {
                setState(() {
                  _currentIndex = 3;
                  _pageController.jumpToPage(_currentIndex);
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 12,
                  right: 12,
                  bottom: 0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _currentIndex == 3
                        ? SvgPicture.asset(
                            "assets/icons/active/profile_icon.svg",
                            width: 22,
                          )
                        : SvgPicture.asset(
                            "assets/icons/inactive/profile_icon.svg",
                            width: 22,
                          ),
                    SizedBox(height: 2),
                    Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

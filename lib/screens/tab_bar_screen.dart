import 'package:flutter/material.dart';

import './home_screen.dart';
import './search_screen.dart';
import './tv_screen.dart';
import './my_list_screen.dart';
import './more_screen.dart';
import './downloads_screen.dart';

class TabBarScreen extends StatefulWidget {
  static const routeName = '/tabBarBcreen';
  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  List<Map<String, Widget>> _pages = [
    {'page': HomeScreen()},
    {'page': SearchScreen()},
    {'page': TvScreen()},
    {'page': DownloadsScreen()},
    {'page': MyListScreen()},
    {'page': MoreScreen()},
  ];

  int _currentPageIndex = 0;

  void _changePage(index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_currentPageIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromRGBO(17, 17, 17, 1),
          selectedItemColor: Theme.of(context).accentColor,
          unselectedItemColor: Color.fromRGBO(143, 143, 143, 1),
          currentIndex: _currentPageIndex,
          onTap: (index) {
            _changePage(index);
          },
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home_filled,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(
                Icons.search,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Tv',
              icon: Icon(
                Icons.tv,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Donloads',
              icon: Icon(
                Icons.file_download,
              ),
            ),
            BottomNavigationBarItem(
              label: 'My List',
              icon: Icon(
                Icons.add,
              ),
            ),
            BottomNavigationBarItem(
              label: 'More',
              icon: Icon(
                Icons.menu,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

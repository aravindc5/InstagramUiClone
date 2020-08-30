import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramuiclone/ui/main_page.dart';
import 'package:instagramuiclone/ui/profile_page.dart';
import 'package:instagramuiclone/ui/search_page.dart';
import 'package:instagramuiclone/widgets/bottom_nav_details.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final pages = [MainPage(), SearchPage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Image.network(
            "http://assets.stickpng.com/thumbs/5a4e432a2da5ad73df7efe7a.png",
            height: 100,
            width: 100,
          ),
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.camera,
            color: Colors.grey,
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.inbox,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: pages[_currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: allDestinations.map((BottomNavigationDetails b) {
            return BottomNavigationBarItem(
                icon: Icon(
                  b.icon,
                  color: Colors.black,
                ),
                backgroundColor: Colors.white,
                title: Text(b.title));
          }).toList(),
        ),
      ),
    );
  }
}

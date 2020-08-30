import 'package:flutter/material.dart';

class BottomNavigationDetails {
  const BottomNavigationDetails(this.title, this.icon, this.color);
  final String title;
  final IconData icon;
  final Color color;
}

const List<BottomNavigationDetails> allDestinations = <BottomNavigationDetails>[
  BottomNavigationDetails('', Icons.home, Colors.black),
  BottomNavigationDetails('', Icons.search, Colors.black),
  BottomNavigationDetails('', Icons.person, Colors.black)
];

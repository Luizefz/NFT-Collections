import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyBottomBar extends StatelessWidget {
  final int index;
  final Function(int?) onTap;
  const MyBottomBar({
    Key? key,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BottomNavigationBar(
        currentIndex: index,
        onTap: onTap,
        iconSize: 28,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.insights_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: 'Favoritos'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Perfil'),
        ],
      ),
    );
  }
}

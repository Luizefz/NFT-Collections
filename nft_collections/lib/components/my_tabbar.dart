import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTabBar extends StatelessWidget {
  final List tabOptions;

  const MyTabBar({
    Key? key,
    required this.tabOptions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Tab Bar
        TabBar(
          splashBorderRadius: BorderRadius.circular(12),
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.black,
          labelStyle: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w500,      
          ),
          indicatorColor: Colors.tealAccent[700],
          indicatorPadding: const EdgeInsets.only(bottom: -3),
          
          tabs: [
            Text(tabOptions[0][0]),
            Text(tabOptions[1][0]),
            Text(tabOptions[2][0]),
          ],
        ),

        Expanded(
          child: TabBarView(
            children: [
              tabOptions[0][1],
              tabOptions[1][1],
              tabOptions[2][1],
            ],
          ),
        ),
      ],
    );
  }
}

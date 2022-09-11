import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  VoidCallback onTap;

  MyAppBar({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.8),
      child: Row(
        //Alinhamento dos ítens na App Bar
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //Título da App Bar
          Expanded(
            child: Text(
              title,
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          //Botão de pesquisa
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),
              child: Icon(
                Icons.search,
                size: 36,
              ),
            ),
          )
        ],
      ),
    );
  }
}

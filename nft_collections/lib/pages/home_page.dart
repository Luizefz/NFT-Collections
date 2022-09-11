import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nft_collections/components/my_appbar.dart';
import 'package:nft_collections/components/my_bottombar.dart';
import 'package:nft_collections/components/my_tabbar.dart';
import 'package:nft_collections/tabs/recent_tab.dart';
import 'package:nft_collections/tabs/top_tab.dart';
import 'package:nft_collections/tabs/trending_tab.dart';
import 'package:nft_collections/theme/glass_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Toque no botão de pesquisa
  void _searchButtonTapped() {}

  //Lista com as Tabs do TabView
  List tabOptions = const [
    ["Recentes", RecentTab()],
    ["Trending", TrendingTab()],
    ["Top", TopTab()],
  ];

  //Navegação do bottom bar
  int _currentBottomIndex = 0;
  void _handleBottomIndexChange(int? index) {
    setState(() {
      _currentBottomIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        extendBody: true,
        bottomNavigationBar: GlassBox(
          child: MyBottomBar(
            index: _currentBottomIndex,
            onTap: _handleBottomIndexChange,
          ),
        ),
        body: ListView(
          // physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          children: [
            //App Bar persolanizada + Botão de Pesquisa
            MyAppBar(title: 'Explore as Coleções', onTap: _searchButtonTapped),

            //Tab Bar
            SizedBox(
              height: 600,
              child: MyTabBar(
                tabOptions: tabOptions,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

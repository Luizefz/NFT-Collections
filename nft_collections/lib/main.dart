import 'package:flutter/material.dart';
import 'package:nft_collections/pages/home_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await inicialization(null);

  runApp(const MyApp());
}

Future inicialization(BuildContext? context) async {

  await Future.delayed(Duration(seconds: 3));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      title: 'NFT Collections',
      home: HomePage(),
    );
  }
}

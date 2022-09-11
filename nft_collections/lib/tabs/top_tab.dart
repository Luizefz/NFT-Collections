import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nft_collections/components/cards.dart';

class TopTab extends StatelessWidget {
  const TopTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Cards(imagePath: './images/PIC-05.jpg');
  }
}

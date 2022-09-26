import 'dart:ffi';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_sunday/custome_extensions/bool_ext.dart';
import 'package:flutter_sunday/main.dart';
import 'package:flutter_sunday/screens/abdularaheem_screens/abdularaheem_home.dart';
import 'package:flutter_sunday/screens/abdularaheem_screens/abdularaheem_listoftiles.dart';
import 'package:flutter_sunday/screens/abdularaheem_screens/abdularaheem_listtile.dart';
import 'package:flutter_sunday/themes/theme_values.dart';
import 'package:flutter_sunday/custome_widgets/cust_dialog.dart';
import 'custome_widgets/cust_nav.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var blockOfAbdularaheemCode_num01 =
        Center(child: Abdularaheem_Home.homeElevatedButton(context));
    var blockOfAbdularaheemCode_num02 = Center(child: Abdularaheem_ListTile());
    var blockOfAbdularaheemCode_num03 = Abdularaheem_ListOfTiles();
    return Scaffold(
      appBar: AppBar(),
      body: blockOfAbdularaheemCode_num03,
    );
  }
}

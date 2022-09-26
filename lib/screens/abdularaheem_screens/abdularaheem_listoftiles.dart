import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_sunday/custome_extensions/bool_ext.dart';
import 'package:flutter_sunday/screens/abdularaheem_screens/abdularaheem_home.dart';

import '../../custome_widgets/cust_switchlisttile.dart';
import '../../themes/theme_values.dart';

/// third blockOfAbdularaheemCode
/// num03

class Abdularaheem_ListOfTiles extends StatefulWidget {
  const Abdularaheem_ListOfTiles({super.key});

  @override
  State<Abdularaheem_ListOfTiles> createState() =>
      _Abdularaheem_ListOfTilesState();
}

bool exit_SwitchValue = true;
bool showContactInfo_SwitchValue = false;
bool theme_SwitchValue = false;
List<Color> homeBackGroundColors = ThemeValues.brightColorsBackground;

class _Abdularaheem_ListOfTilesState extends State<Abdularaheem_ListOfTiles> {
  @override
  Widget build(BuildContext context) {
    var cust_switchListTile_TEST = Cust_SwitchListTile(
      function: (value) {
        setState(() {
          print("function printed");
          revertSwitchValue();
        });
      },
      title: "test Title",
      subTitle: "test SubTitle",
      secondary: Icon(Icons.abc),
    );
    return Container(
      decoration: _backgroundDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ToDo: replace what inside these three methods with a Cust_SwtichListTile, when ToDo(Cust_SwitchListTile_function) is Done.
          exit_SwitchListTile(),
          showContactInfo_SwitchListTile(context),
          changeTheme_SwitchListTile(),
          // ToDo(Cust_SwitchListTile_function): fix the Bug(function doesnt assigne a Function to Cust_SwitchListTile _function. _function stays empty)
          cust_switchListTile_TEST
        ],
      ),
    );
  }

  BoxDecoration _backgroundDecoration() {
    return BoxDecoration(
      gradient: LinearGradient(colors: homeBackGroundColors),
    );
  }

  SwitchListTile exit_SwitchListTile() {
    return SwitchListTile(
      secondary: Icon(Icons.exit_to_app),
      title: Text(
        "Exit the App",
        style: TextStyle(fontSize: 28),
      ),
      subtitle: Text(
        "It's hard to see you leave :( ",
        style: TextStyle(fontSize: 20),
      ),
      value: exit_SwitchValue,
      onChanged: (val) {
        setState(() {
          exit_SwitchValue = !exit_SwitchValue;
          exit(1);
        });
      },
    );
  }

  SwitchListTile showContactInfo_SwitchListTile(BuildContext context) {
    return SwitchListTile(
      title: Text(
        "show contact information",
        style: TextStyle(fontSize: 22),
      ),
      subtitle: Text("Email,Mobile,Etc"),
      value: showContactInfo_SwitchValue,
      onChanged: (value) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                actions: [
                  Text("Do you want to proceed ?"),
                  Text("yes"),
                  Text("No")
                ],
                backgroundColor: Colors.green.shade300,
                content: Container(
                  color: Colors.lime.shade300,
                  child: Column(
                    children: [
                      Divider(
                        height: 100,
                      ),
                      Container(
                        color: Colors.purple,
                        child: Row(
                          children: [Text("Mobile"), Text("962 797777777")],
                        ),
                      ),
                      Divider(
                        height: 100,
                      ),
                      Container(
                        color: Colors.amber,
                        child: Row(
                          children: [
                            Text("Email"),
                            Text("Example@example.com")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            });
        setState(() {
          showContactInfo_SwitchValue =
              showContactInfo_SwitchValue.reverseValue();
        });
      },
    );
  }

  SwitchListTile changeTheme_SwitchListTile() {
    return SwitchListTile(
      title: Text(
        "do you want to active the dark mode ? ",
        style: TextStyle(fontSize: 20),
      ),
      value: theme_SwitchValue,
      onChanged: (value) {
        setState(() {
          theme_SwitchValue = !theme_SwitchValue;
          homeBackGroundColors =
              homeBackGroundColors == ThemeValues.brightColorsBackground
                  ? ThemeValues.darkColorsBackground
                  : ThemeValues.brightColorsBackground;
        });
      },
    );
  }
}

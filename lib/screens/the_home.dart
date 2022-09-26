import 'package:flutter/material.dart';
import '../custome_widgets/cust_dialog.dart';

class TheHome {
  static Future<dynamic> goToHomePage(BuildContext context) {
    Widget homePage = Image.network(
        "https://th.bing.com/th/id/OIP.qHAHjx6Gzs-A_jN6a8g_RAHaE-?pid=ImgDet&rs=1");
    return Cust_Dialog.showCustomeDialog(
      context: context,
      widget: [homePage],
    );
  }

  static ElevatedButton homeElevatedButton(BuildContext context) {
    String _homeQuestion = "Do you want to go to home page?";
    Icon _homeIcon = Icon(Icons.home);
    Text _homeLabel = Text("Home");

    return ElevatedButton.icon(
      onPressed: () {
        Cust_Dialog.dialogYesNoConfirmation(
          context: context,
          question: _homeQuestion,
        );
      },
      icon: _homeIcon,
      label: _homeLabel,
    );
  }
}

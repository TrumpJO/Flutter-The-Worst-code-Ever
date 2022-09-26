import 'package:flutter/material.dart';
import '../../custome_widgets/cust_dialog.dart';

/// first blockOfAbdularaheemCode
/// num01

class Abdularaheem_Home {
  static Future<dynamic> goToHomePage(BuildContext context) {
    Widget homePage = Image.network(
        "https://th.bing.com/th/id/OIP.qHAHjx6Gzs-A_jN6a8g_RAHaE-?pid=ImgDet&rs=1");
    return Cust_Dialog.showCustomeDialog(
      context: context,
      widget: [homePage],
    );
  }

  static ElevatedButton homeElevatedButton(BuildContext context) {
    Icon _homeIcon = Icon(Icons.home);
    Text _homeLabel = Text("Home");
    return ElevatedButton.icon(
      onPressed: () {
        dialogYesNoConfirmation_Home(context: context);
      },
      icon: _homeIcon,
      label: _homeLabel,
    );
  }

  static Future<dynamic> dialogYesNoConfirmation_Home(
      {required BuildContext context}) {
    return Cust_Dialog.dialogYesNoConfirmation(
      context: context,
      question: getToGoHomeQuestion(),
    );
  }

  static String getToGoHomeQuestion() {
    return "Do you want to go to home page?";
  }
}



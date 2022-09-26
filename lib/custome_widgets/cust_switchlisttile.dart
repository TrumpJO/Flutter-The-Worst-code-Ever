import 'package:flutter/material.dart';
import 'package:flutter_sunday/custome_extensions/bool_ext.dart';
import 'package:flutter_sunday/screens/abdularaheem_screens/abdularaheem_listtile.dart';

Function(bool)? _function;
bool _value = false;
String _title = "";
String _subTitle = "";
Icon? _secondary;

void setFunction(Function function) {
  _function = function(_value);
}

class Cust_SwitchListTile extends StatefulWidget {
  void revertSwitchValue() {
    print("Swtich Val Revered");
    _value = _value.reverseValue();
  }

  Cust_SwitchListTile({
    super.key,
    required Function(bool) function,
    bool value = false,
    String title = "",
    String subTitle = "",
    Icon? secondary,
  }) {
    // _function = function;
    setFunction(function);
    _value = value;
    _title = title;
    _subTitle = subTitle;
    _secondary = secondary;
  }

  @override
  State<Cust_SwitchListTile> createState() => _Cust_SwitchListTileState();
}

class _Cust_SwitchListTileState extends State<Cust_SwitchListTile> {
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: _value,
      onChanged: (value) {
        setState(
          () {
            print("\n,\n.\nsetState has been Activated!");
            _function;
            print(_function.toString());
          },
        );
      },
      title: Text(_title),
      subtitle: Text(_subTitle),
      secondary: _secondary,
    );
  }
}

void revertSwitchValue() {
  print("revertSwitchValue");
  _value = _value.reverseValue();
}

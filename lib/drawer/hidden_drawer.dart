import 'package:drawer/ui/home_page.dart';
import 'package:drawer/ui/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  final myTextStyle = const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: Colors.white);

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'HomePage',
              baseStyle: myTextStyle,
              selectedStyle: TextStyle(),colorLineSelected: Colors.blue.shade400),
          HomePage()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'SettingPage',
              baseStyle: myTextStyle,
              selectedStyle: TextStyle(),
              colorLineSelected: Colors.blue.shade400),
          SettingPage())
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
        screens: _pages, backgroundColorMenu: Colors.blue.shade100,
    initPositionSelected: 0,
    slidePercent: 60,
    );
  }
}

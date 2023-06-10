import 'package:flutter/material.dart';
import 'package:iotproject/conponents/item_box.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          shrinkWrap: true,
          children: [
            ItemBox(
              key: UniqueKey(),
              title: "Setting1",
              color: Colors.lightGreen,
              size: 100,
              status: false,
            ),
            ItemBox(
              key: UniqueKey(),
              title: "setting2",
              color: Colors.lightBlue,
              size: 100,
              status: false,
            ),
          ],
        ),
      ),
    );
  }
}

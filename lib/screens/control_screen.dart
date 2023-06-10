import 'package:flutter/material.dart';
import 'package:iotproject/conponents/item_box.dart';

class ControlScreen extends StatefulWidget {
  const ControlScreen({super.key});

  @override
  State<ControlScreen> createState() => _ControlScreenState();
}

class _ControlScreenState extends State<ControlScreen> {
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
              title: "Control1",
              color: Colors.lightGreen,
              size: 100,
              status: false,
            ),
            ItemBox(
              key: UniqueKey(),
              title: "Control2",
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

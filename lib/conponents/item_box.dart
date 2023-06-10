import 'package:flutter/material.dart';

class ItemBox extends StatelessWidget {
  const ItemBox(
      {required Key key,
      required this.title,
      required this.color,
      required this.size,
      required this.status})
      : super(key: key);

  final String title;
  final Color color;
  final double size;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      height: size,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 20, color: Colors.white, letterSpacing: 2),
          ),
          Expanded(
            child: Text(
              status.toString(),
              textAlign: TextAlign.right,
              style: const TextStyle(color: Colors.amberAccent),
            ),
          ),
        ],
      ),
    );
  }
}

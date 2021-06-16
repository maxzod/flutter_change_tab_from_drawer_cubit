import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final Color color;
  final String text;
  const CustomTab({
    required this.color,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text(text),
      ),
    );
  }
}

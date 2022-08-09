import 'package:flutter/material.dart';

class HadethDetailsItem extends StatelessWidget {
  String text;

  HadethDetailsItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}

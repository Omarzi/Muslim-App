import 'package:flutter/material.dart';

class SuraDetailsItem extends StatelessWidget {
  String text;

  SuraDetailsItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}

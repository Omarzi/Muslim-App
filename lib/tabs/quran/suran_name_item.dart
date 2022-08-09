import 'package:flutter/material.dart';

import '../../sura_details/sura_details.dart';

class SuraNameItem extends StatelessWidget {
  String text;
  int index;

  SuraNameItem(this.text, this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            SuraDetails.routeName,
            arguments: SuraDetailsArgs(text, index),
          );
        },
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}

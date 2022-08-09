import 'package:flutter/material.dart';
import 'package:muslim/tabs/ahadeth/ahadeth.dart';
import 'package:muslim/tabs/ahadeth/hadet_details.dart';

// ignore: must_be_immutable
class HadethNameItem extends StatelessWidget {
  String text;
  HadethModel hadethModel;

  HadethNameItem(this.text, this.hadethModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            HadethDetails.routeName,
            arguments: hadethModel,
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

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:muslim/providers/app_provider.dart';
import 'package:provider/provider.dart';
import '../../constants/my_theme.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        Image.asset('assets/images/radio_logo.png'),
        const SizedBox(
          height: 100,
        ),
        Text(
          AppLocalizations.of(context)!.holyquranradio,
          style: provider.themeMode == ThemeMode.light
                  ? const TextStyle(fontSize: 25)
                  : TextStyle(fontSize: 25, color: MyThemeData.whiteColor),
        ),
        const SizedBox(
          height: 100,
        ),
        SizedBox(
          width: 280,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ImageIcon(
                const AssetImage(
                  'assets/images/play.png',
                ),
                size: 280,
                color: MyThemeData.standardColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

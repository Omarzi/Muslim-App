import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:muslim/constants/my_theme.dart';
import 'package:muslim/providers/app_provider.dart';
import 'package:provider/provider.dart';

class ShowThemeBottomSheet extends StatefulWidget {
  const ShowThemeBottomSheet({Key? key}) : super(key: key);

  @override
  State<ShowThemeBottomSheet> createState() => _ShowThemeBottomSheetState();
}

class _ShowThemeBottomSheetState extends State<ShowThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.ChangeAppTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: selectedLanguage(
              AppLocalizations.of(context)!.light,
              provider.themeMode == ThemeMode.light ? true : false,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              provider.ChangeAppTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: selectedLanguage(
              AppLocalizations.of(context)!.dark,
              provider.themeMode == ThemeMode.light ? false : true,
            ),
          ),
        ],
      ),
    );
  }

  Widget selectedLanguage(String text, bool selected) {
    if (selected) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 25, color: MyThemeData.standardColor),
          ),
          Icon(Icons.check, size: 30, color: MyThemeData.standardColor),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 25),
          ),
          const Icon(
            Icons.check,
            size: 30,
          ),
        ],
      );
    }
  }
}

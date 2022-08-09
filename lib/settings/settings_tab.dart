import 'package:flutter/material.dart';
import 'package:muslim/providers/app_provider.dart';
import 'package:muslim/settings/show_language_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:muslim/settings/show_theme_bottom_sheet%20copy.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 85,
          ),
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomShet();
            },
            child: Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  12.0,
                ),
                color: Colors.white,
                border: Border.all(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              child: Text(
                provider.AppLanguage == "en"
                    ? AppLocalizations.of(context)!.english
                    : AppLocalizations.of(context)!.arabic,
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              showThemeBottomShet();
            },
            child: Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  12.0,
                ),
                color: Colors.white,
                border: Border.all(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              child: Text(
                // ignore: unrelated_type_equality_checks
                provider.themeMode == ThemeMode.light
                    ? AppLocalizations.of(context)!.light
                    : AppLocalizations.of(context)!.dark,
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showThemeBottomShet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return const ShowThemeBottomSheet();
        });
  }

  void showLanguageBottomShet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return const ShowLanguageBottomSheet();
        });
  }
}

import 'package:flutter/material.dart';
import 'package:muslim/providers/app_provider.dart';
import 'package:muslim/settings/settings_tab.dart';
import 'package:muslim/tabs/ahadeth/ahadeth.dart';
import 'package:muslim/tabs/quran/quran.dart';
import 'package:muslim/tabs/radio/radio.dart';
import 'package:muslim/tabs/tasbeh.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeLayout extends StatefulWidget {
  static const String routName = "Home";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  List<Widget> tabs = [
    QuranScreen(),
    AhadethScreen(),
    TasbehScreen(),
    RadioScreen(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return SafeArea(
      child: Stack(
        children: [
          Image.asset(
            provider.changeMainBackground(),
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                AppLocalizations.of(context)!.helloWorld,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            body: tabs[currentIndex],
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                canvasColor: Theme.of(context).primaryColor,
              ),
              child: BottomNavigationBar(
                onTap: (index) {
                  currentIndex = index;
                  setState(() {});
                },
                currentIndex: currentIndex,
                items: [
                  BottomNavigationBarItem(
                    icon: const ImageIcon(
                      AssetImage(
                        "assets/images/quran.png",
                      ),
                    ),
                    label: AppLocalizations.of(context)!.quran,
                  ),
                  BottomNavigationBarItem(
                    icon: const ImageIcon(
                      AssetImage(
                        "assets/images/quran-quran-svgrepo-com.png",
                      ),
                    ),
                    label: AppLocalizations.of(context)!.ahadeth,
                  ),
                  BottomNavigationBarItem(
                    icon: const ImageIcon(
                      AssetImage(
                        "assets/images/sebha.png",
                      ),
                    ),
                    label: AppLocalizations.of(context)!.tasbeh,
                  ),
                  BottomNavigationBarItem(
                    icon: const ImageIcon(
                      AssetImage(
                        "assets/images/radio.png",
                      ),
                    ),
                    label: AppLocalizations.of(context)!.radio,
                  ),
                  BottomNavigationBarItem(
                    icon: const Icon(
                      Icons.settings,
                    ),
                    label: AppLocalizations.of(context)!.settings,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

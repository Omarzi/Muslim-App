// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:muslim/providers/app_provider.dart';
import 'package:muslim/sura_details/suran_details_item.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "suraDetails";

  const SuraDetails({Key? key}) : super(key: key);

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  // ignore: non_constant_identifier_names
  var SuraDetailsArg;

  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
        var provider = Provider.of<AppProvider>(context);

    SuraDetailsArg =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;

    if (verses.isEmpty) {
      loadFile(SuraDetailsArg.index);
    }

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
                SuraDetailsArg.SuraName,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            body: verses.isEmpty
                ? Center(
                    child: CircularProgressIndicator(
                      color: Theme.of(context).primaryColor,
                    ),
                  )
                : Column(
                  children: [
                    const SizedBox(
                      height: 85,
                    ),
                    Expanded(
                      child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 50,
                              ),
                              color: Theme.of(context).primaryColor,
                              height: 1,
                            );
                          },
                          itemCount: verses.length,
                          itemBuilder: (context, index) {
                            return SuraDetailsItem(
                              verses[index].toString(),
                            );
                          },
                        ),
                    ),
                  ],
                ),
          ),
        ],
      ),
    );
  }

  void loadFile(int index) async {
    String content = await rootBundle.loadString(
      'assets/files/${index + 1}.txt',
    );
    List<String> ayat = content.split('\n');
    verses = ayat;
    setState(() {});
  }
}

class SuraDetailsArgs {
  // ignore: non_constant_identifier_names
  String SuraName;
  int index;

  SuraDetailsArgs(this.SuraName, this.index);
}

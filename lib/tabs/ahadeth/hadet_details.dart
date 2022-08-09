import 'package:flutter/material.dart';
import 'package:muslim/providers/app_provider.dart';
import 'package:muslim/tabs/ahadeth/ahadeth.dart';
import 'package:muslim/tabs/ahadeth/hadeth_details_item.dart';
import 'package:provider/provider.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'hadethdetails';

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    HadethModel model =
        ModalRoute.of(context)!.settings.arguments as HadethModel;
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
                model.title,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            body: Column(
              children: [
                const SizedBox(
                  height: 85,
                ),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return HadethDetailsItem(
                        model.content[index].toString(),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 50,
                        ),
                        color: Theme.of(context).primaryColor,
                        height: 1,
                      );
                    },
                    itemCount: model.content.length,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

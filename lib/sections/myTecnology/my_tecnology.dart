import 'package:flutter/material.dart';
import 'package:web_portfolio/data/data_url.dart';
import 'package:web_portfolio/sections/myTecnology/widgets/tecnology_cards.dart';

class MyTecnology extends StatelessWidget {
  const MyTecnology({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200.0,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 2,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          var imageList = lisTecUrl[index];
          return TecnologyCard(
            url: "$imageList",
          );
        },
        childCount: lisTecUrl.length,
      ),
    );
  }
}

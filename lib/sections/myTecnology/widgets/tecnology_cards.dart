import 'package:flutter/material.dart';

class TecnologyCard extends StatelessWidget {
  const TecnologyCard({Key? key, required this.url}) : super(key: key);

  final String url;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Card(
        color: Colors.transparent,
        elevation: 0.0,
        child: Image(image: AssetImage(url)),
      ),
    );
  }
}

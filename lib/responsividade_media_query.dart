// imports nativos
import 'package:flutter/material.dart';

class ResponsividadeMediaQuery extends StatefulWidget {
  const ResponsividadeMediaQuery({Key? key}) : super(key: key);

  @override
  State<ResponsividadeMediaQuery> createState() => _ResponsividadeMediaQueryState();
}

class _ResponsividadeMediaQueryState extends State<ResponsividadeMediaQuery> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    double statusBar = MediaQuery.of(context).padding.top;
    double appBar = AppBar().preferredSize.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Media Query"),
      ),

      body: Column(
        children: [

          Container(
            width: size.width,
            height: size.height - statusBar - appBar,
            color: Colors.red,
          ),

        ],
      ),
    );
  }
}

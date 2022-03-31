// imports nativos
import 'package:flutter/material.dart';

class ResponsividadeWrap extends StatefulWidget {
  const ResponsividadeWrap({Key? key}) : super(key: key);

  @override
  State<ResponsividadeWrap> createState() => _ResponsividadeWrapState();
}

class _ResponsividadeWrapState extends State<ResponsividadeWrap> {

  double height = 300;
  double width = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wrap"),
      ),

      body: Container(
        color: Colors.grey,
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          children: [

            Container(
              width: width,
              height: height,
              color: Colors.orange,
            ),

            Container(
              width: width,
              height: height,
              color: Colors.red,
            ),

            Container(
              width: width,
              height: height,
              color: Colors.green,
            ),

          ],
        ),
      ),
    );
  }
}

// imports nativos do flutter
import 'package:flutter/material.dart';

// import das telas
import 'package:curso_flutter_web/store_virtual.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Flutter web",
      debugShowCheckedModeBanner: false,
      home: StoreVirtual(),
    ),
  );
}

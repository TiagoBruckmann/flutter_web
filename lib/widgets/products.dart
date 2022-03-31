// imports nativos
import 'package:flutter/material.dart';

class Products extends StatelessWidget {

  String image;
  String name;
  double value;
  Products({ Key? key, required this.image, required this.name, required this.value }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
        ),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [

          Expanded(
            flex: 8,
            child: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          ),

          Expanded(
            flex: 1,
            child: Text(
              name,
            ),
          ),

          Expanded(
            flex: 1,
            child: Text(
              "R\$ $value",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

        ],
      ),
    );
  }
}

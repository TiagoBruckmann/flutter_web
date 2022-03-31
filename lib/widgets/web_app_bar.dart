// imports nativos do flutter
import 'package:flutter/material.dart';

// import das imagens
import 'package:curso_flutter_web/styles/app_images.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Image.asset(
            AppImages.logo,
          ),

          Row(
            children: [

              IconButton(
                onPressed: () => print("BUSCA"),
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 20,
                ),
              ),

              // carrinho
              IconButton(
                onPressed: () => print("CART"),
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 20,
                ),
              ),

              // cadastrar
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
                  // padding: const EdgeInsets.symmetric( vertical: 17, horizontal: 80 ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  print("Cadastrar");
                },
                child: const Text(
                  "Cadastrar",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),

              // conectar
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  // padding: const EdgeInsets.symmetric( vertical: 17, horizontal: 80 ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  print("Entrar");
                },
                child: const Text(
                  "Entrar",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),

            ],
          ),

        ],
      ),
    );
  }
}

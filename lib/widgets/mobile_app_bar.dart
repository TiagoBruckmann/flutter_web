// imports nativos do flutter
import 'package:flutter/material.dart';

// imports dos estilos
import 'package:curso_flutter_web/styles/app_images.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        AppImages.logo,
        fit: BoxFit.contain,
      ),
      actions: [

        // busca
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

        // points
        IconButton(
          onPressed: () => print("POINTS"),
          icon: const Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 20,
          ),
        ),

      ],
    );
  }
}

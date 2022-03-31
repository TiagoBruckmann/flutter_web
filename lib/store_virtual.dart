// imports nativos
import 'package:curso_flutter_web/styles/app_images.dart';
import 'package:curso_flutter_web/widgets/products.dart';
import 'package:flutter/material.dart';

// import das telas
import 'package:curso_flutter_web/widgets/mobile_app_bar.dart';
import 'package:curso_flutter_web/widgets/web_app_bar.dart';

class StoreVirtual extends StatefulWidget {
  const StoreVirtual({Key? key}) : super(key: key);

  @override
  State<StoreVirtual> createState() => _StoreVirtualState();
}

class _StoreVirtualState extends State<StoreVirtual> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ( context, constraints ) {

        double width = constraints.maxWidth;
        double heightAppBar = AppBar().preferredSize.height;

        return Scaffold(
          appBar: ( width < 960  )
          ? PreferredSize(
            preferredSize: Size( width, heightAppBar ),
            child: const MobileAppBar(),
          )
          : PreferredSize(
            preferredSize: Size( width, heightAppBar ),
            child: const WebAppBar(),
          ),

          body: Padding(
            padding: const EdgeInsets.all(16),
            child: GridView.count(
              crossAxisCount: ( width < 600 )
              ? 2
              : ( width < 960 )
              ? 4
              : 6,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: [

                Products(
                  image: AppImages.image1,
                  name: "Super micro-ondas de ultima geração",
                  value: 250.50,
                ),

                Products(
                  image: AppImages.image2,
                  name: "Super conjunto de pneus michelam",
                  value: 800.00,
                ),

                Products(
                  image: AppImages.image3,
                  name: "Samsumg A9",
                  value: 2500.00,
                ),

                Products(
                  image: AppImages.image4,
                  name: "Iphone 11",
                  value: 4000.00,
                ),

                Products(
                  image: AppImages.image5,
                  name: "Samsumg não sei qual modelo",
                  value: 1500.00,
                ),

                Products(
                  image: AppImages.image6,
                  name: "Iphone 7",
                  value: 1000.00,
                ),

                // clones
                Products(
                  image: AppImages.image1,
                  name: "Super micro-ondas de ultima geração",
                  value: 250.50,
                ),

                Products(
                  image: AppImages.image2,
                  name: "Super conjunto de pneus michelam",
                  value: 800.00,
                ),

                Products(
                  image: AppImages.image3,
                  name: "Samsumg A9",
                  value: 2500.00,
                ),

                Products(
                  image: AppImages.image4,
                  name: "Iphone 11",
                  value: 4000.00,
                ),

                Products(
                  image: AppImages.image5,
                  name: "Samsumg não sei qual modelo",
                  value: 1500.00,
                ),

                Products(
                  image: AppImages.image6,
                  name: "Iphone 7",
                  value: 1000.00,
                ),

                Products(
                  image: AppImages.image1,
                  name: "Super micro-ondas de ultima geração",
                  value: 250.50,
                ),

                Products(
                  image: AppImages.image2,
                  name: "Super conjunto de pneus michelam",
                  value: 800.00,
                ),

                Products(
                  image: AppImages.image3,
                  name: "Samsumg A9",
                  value: 2500.00,
                ),

                Products(
                  image: AppImages.image4,
                  name: "Iphone 11",
                  value: 4000.00,
                ),

                Products(
                  image: AppImages.image5,
                  name: "Samsumg não sei qual modelo",
                  value: 1500.00,
                ),

                Products(
                  image: AppImages.image6,
                  name: "Iphone 7",
                  value: 1000.00,
                ),

              ],
            ),
          ),
        );

      },
    );
  }
}

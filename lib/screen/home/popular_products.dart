import 'package:ecomerce_app/screen/home/section_title.dart';
import 'package:flutter/material.dart';

import '../../components/product_card.dart';
import '../../models/Product.dart';
import '../../size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Popular Product", press: () {}),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCar(
                  product: demoProducts[index],
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}

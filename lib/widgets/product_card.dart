import 'package:flutter/material.dart';
import 'package:untitled2/models/product.dart';

import '../second_page.dart';



class ProductCard extends StatelessWidget {
  const ProductCard({Key? key,required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>  Navigator.push(context, MaterialPageRoute(builder: (_) => SecondPage(product: product,))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2 - 16,
            height: MediaQuery.of(context).size.width / 2 - 16,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: product.color
            ),
          ),
          Text(product.name ?? ""),
          Text(product.price.toString()),
        ],
      ),
    );
  }
}






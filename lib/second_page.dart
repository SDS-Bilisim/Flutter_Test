
import 'package:flutter/material.dart';

import 'models/product.dart';


class SecondPage extends StatefulWidget {
  final Product product;
  const SecondPage({Key? key,required this.product}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}



class _SecondPageState extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        color: Colors.red,
        child: Text(widget.product.name ?? ""),
      ),
    );
  }

  test() {
    widget.product;
  }
}

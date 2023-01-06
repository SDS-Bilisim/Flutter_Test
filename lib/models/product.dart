


import 'package:flutter/material.dart';

class Product {
  String? name;
  String? image;
  double? price;
  Color? color;

  Product({
    this.name,
    this.image,
    this.price,
    this.color,
  });


  static List<Product> fakeData() {
    return [
      Product(name: "Office Code",image: "",price: 234,color: Colors.blue),
      Product(name: "Belt Bag",image: "",price: 123,color: Colors.brown),
      Product(name: "Hang Top",image: "",price: 1231,color: Colors.grey),
      Product(name: "Old Fashion",image: "",price: 111,color: Colors.orange),
      Product(name: "Old Fashion",image: "",price: 111,color: Colors.orange),
      Product(name: "Old Fashion",image: "",price: 111,color: Colors.orange),
      Product(name: "Old Fashion",image: "",price: 111,color: Colors.orange),
      Product(name: "Old Fashion",image: "",price: 111,color: Colors.orange),
      Product(name: "Old Fashion",image: "",price: 111,color: Colors.orange),
      Product(name: "Old Fashion",image: "",price: 111,color: Colors.orange),
      Product(name: "Old Fashion",image: "",price: 111,color: Colors.orange),
    ];
  }


}
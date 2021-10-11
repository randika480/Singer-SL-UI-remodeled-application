import 'package:flutter/material.dart';


class CartProduct {
  final String image, title, description, modalNo;
  final int price, size, id;
  final Color color;
  CartProduct({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
    this.modalNo,
  });
}

List<CartProduct> Cartproducts = [
  CartProduct(
      id: 4,
      title: "Apple iPhone 12 Pro (256GB)",
      price: 39990,
      size: 11,
      description: dummyText,
      image: "assets/images/a8.png",
      color: Colors.white,
      modalNo: "PRODUCT CODE: SMG-SM-A217F-B-4"),
  CartProduct(
      id: 3,
      title: "Samsung Galaxy A21S",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/a3.png",
      color: Colors.white,
      modalNo: "PRODUCT CODE: SMG-SM-T735-B"),
  CartProduct(
      id: 5,
      title: "Huawei Y5P (2GB+32GB)",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/a5.png",
      color: Colors.white,
      modalNo: "PRODUCT CODE: SMG-SM-A217F-B-4"),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

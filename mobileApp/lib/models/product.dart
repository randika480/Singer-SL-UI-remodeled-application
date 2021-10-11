import 'package:flutter/material.dart';

class Product {
  final String image, title, description, modalNo;
  final int price, size, id;
  final Color color;
  Product({
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

List<Product> products = [
  Product(
      id: 1,
      title: "iPhone 11 Pro Max 64GB ",
      price: 275999,
      size: 12,
      description: dummyText,
      image: "assets/images/a3.png",
      color: Colors.white,
      modalNo: "PRODUCT CODE: AP-12-64-BLK"),
  Product(
      id: 2,
      title: "Samsung Galaxy Z Flip ",
      price: 129999,
      size: 8,
      description: dummyText,
      image: "assets/images/a2.png",
      color: Colors.white,
      modalNo: "PRODUCT CODE: SMG-SM-T735-B"),
  Product(
      id: 3,
      title: "Samsung Galaxy A21S",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/a1.png",
      color: Colors.white,
      modalNo: "PRODUCT CODE: SMG-SM-T735-B"),
  Product(
      id: 4,
      title: "Apple iPhone 12 Pro",
      price: 39990,
      size: 11,
      description: dummyText,
      image: "assets/images/a8.png",
      color: Colors.white,
      modalNo: "PRODUCT CODE: SMG-SM-A217F-B-4"),
  Product(
      id: 5,
      title: "Huawei Y5P ",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/a5.png",
      color: Colors.white,
      modalNo: "PRODUCT CODE: SMG-SM-A217F-B-4"),
  Product(
      id: 6,
      title: "Huawei Y5P ",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/a6.png",
      color: Colors.white,
      modalNo: "PRODUCT CODE: SMG-SM-A217F-B-4"),
  Product(
      id: 6,
      title: "Huawei Nova 7i ",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/a7.png",
      color: Colors.white,
      modalNo: "PRODUCT CODE: SMG-SM-A217F-B-4"),
  Product(
      id: 6,
      title: "Huawei Y5P ",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/a4.png",
      color: Colors.white,
      modalNo: "PRODUCT CODE: SMG-SM-A217F-B-4"),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

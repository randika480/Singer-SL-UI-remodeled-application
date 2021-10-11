import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String id;
  final String category;
  final String name;
  final String description;
  final String imgUrl;
  final double price;

  Product(
      {@required this.id,
      @required this.category,
      @required this.name,
      @required this.description,
      @required this.imgUrl,
      @required this.price});
}

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
        id: '1',
        category: 'Phone',
        name: 'Apple iPhone 12',
        description: '64GB, Black',
        imgUrl:
            'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-black-select-2020?wid=940&hei=1112&fmt=png-alpha&.v=1604343702000',
        price: 228900),
    Product(
        id: '2',
        category: 'phone',
        name: 'Sony Headphones',
        description: 'WH-1000XM4',
        imgUrl:
            'https://www.powerplanetonline.com/cdnassets/sony_wh_1000xm4_negro_auriculares_inalambrico_01_l.jpg',
        price: 69900),
    Product(
        id: '3',
        category: 'Laptop',
        name: 'ASUS E410',
        description: 'core i5',
        imgUrl:
            'https://dlcdnwebimgs.asus.com/gain/f7f93bac-7991-4703-bbfa-6daebf038f90/',
        price: 150000),
    Product(
        id: '4',
        category: 'Sofa',
        name: '3 seater sofas',
        description: 'Fargo sofa',
        imgUrl:
            'https://www.boconcept.com/on/demandware.static/-/Sites-master-catalog/default/dw8abca927/images/40000/41432.jpg',
        price: 56000),
    Product(
        id: '5',
        category: 'TV',
        name: 'LG LED TV',
        description: '43 inch full HD',
        imgUrl:
            'https://cdn.takas.lk/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/_/1_4__6.jpg',
        price: 67000),
    Product(
        id: '6',
        category: 'Kitchen',
        name: 'Philips Oven',
        description: 'Electrical Oven',
        imgUrl: 'https://damro.lk/wp-content/uploads/2020/08/IEOV05-32.jpg',
        price: 54000)
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}

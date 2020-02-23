import 'package:flutter/material.dart';
import '../models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
        id: 'p1',
        title: 'Red Shirt',
        description: 'A red shirt - it is pretty red!',
        price: 29.99,
        imageUrl: 'https://i.ebayimg.com/images/g/3YgAAOSwcZ1cHLMj/s-l300.jpg'),
    Product(
        id: 'p1',
        title: 'Red Shirt',
        description: 'A red shirt - it is pretty red!',
        price: 29.99,
        imageUrl: 'https://i.ebayimg.com/images/g/3YgAAOSwcZ1cHLMj/s-l300.jpg'),
    Product(
        id: 'p1',
        title: 'Red Shirt',
        description: 'A red shirt - it is pretty red!',
        price: 29.99,
        imageUrl: 'https://i.ebayimg.com/images/g/3YgAAOSwcZ1cHLMj/s-l300.jpg'),
  ];

  List<Product> get items {
    // All of object in flutter are references type.
    // We must return a pointer at object memory.
    return [..._items];
  }

  void addProdect() {
//    _items.add(value);
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductsManager extends StatefulWidget {
  final Map<String, String> startingProduct;

  ProductsManager({required this.startingProduct}) {
    print('[ProductsManager Widget] Constructor');
  }
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProductsManagerState();
  }
}

class ProductsManagerState extends State<ProductsManager> {
  List<Map<String, String>> _products = [];

  @override
  void initState() {
    print('[ProductsManager State] initState()');
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
    super.initState();
  }

  @override
  void didUpdateWidget(ProductsManager oldWidget) {
    print('[ProductsManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(Map<String, String> product) {
    setState(() {
      _products.add(product);
    });
    print(_products);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct),
        ),
        Expanded(child: Products(_products))
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';

class Cart {
  late final int? id;
  final String? prodID;
  final String? prodName;
  final int? initialPrice;
  final int? productPrice;
  final int? quantity;
  final String? unitTag;
  final String? image;



  Cart({
    required this.id,
    required this.prodID,
    required this.prodName,
    required this.initialPrice,
    required this.productPrice,
    required this.quantity,
    required this.unitTag,
    required this.image});

  Cart.fromMap(Map<dynamic, dynamic> res)
  : id = res["id"],
        prodID = res["prodId"],
        prodName = res["prodName"],
        initialPrice = res["initialPrice"],
        productPrice = res["ProductPrice"],
        quantity = res['quantity'],
        unitTag = res["unitTag"],
        image = res["image"];
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "prodID": prodID,
      "prodName": prodName,
      "initialPrice": initialPrice,
      "productPrice": productPrice,
      "quantity": quantity,
      "unitTag": unitTag,
      "image": image
    };
  }
   Map<String, dynamic> quantityMap() {
    return {
      "prodID" : prodID,
      "quantity" : quantity,
    };
  }



}
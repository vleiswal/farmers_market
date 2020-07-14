import 'package:flutter/material.dart';

class Product {
  final String productName;
  final String unitType;
  final double unitPrice;
  final int availableUnits;
  final String vendorId;
  final String productId;
  final String imageUrl;
  final bool approved;
  final String note;

  Product({
    @required this.approved,
    @required this.availableUnits,
    this.imageUrl = '',
    this.note = '',
    @required this.productId,
    @required this.productName,
    @required this.unitPrice,
    @required this.unitType,
    @required this.vendorId,
  });

  Map<String, dynamic> toMap() {
    return {
      'productName': productName,
      'unitPrice': unitPrice,
      'unitType': unitType,
      'productId': productId,
      'vendorId': vendorId,
      'approved': approved,
      'availableUnits': availableUnits,
      'imageUrl': imageUrl,
      'note': note,
    };
  }

  Product.formFirestore(Map<String, dynamic> firestore)
      : productName = firestore['productName'],
        unitPrice = firestore['unitPrice'],
        unitType = firestore['unitType'],
        productId = firestore['productId'],
        vendorId = firestore['vendorId'],
        approved = firestore['approved'],
        availableUnits = firestore['availableUnits'],
        imageUrl = firestore['imageUrl'],
        note = firestore['note'];
}

import 'package:flutter/material.dart';

class ProductosModel {
  final String name;
  final String image;
  final double price;
  int quantity;

  ProductosModel({required this.name, required this.image, required this.price, this.quantity = 1});



}
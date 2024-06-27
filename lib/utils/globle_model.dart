// import 'package:flutter/material.dart';
class FoodModel{
  String? image;
  String? name;
  String? deal;
  List<FoodModel> foodListDetails=[];
  FoodModel({this.image,this.name,this.deal});
  factory FoodModel.fromFood(Map m1)
  {
    return FoodModel(image: m1['image'],name: m1['name'],deal: m1['deal']);
  }
  FoodModel.toList({required List list1})
  {
    for(int i=0;i<list1.length;i++)
      {
        foodListDetails.add(FoodModel.fromFood(list1[i]));
      }
  }
}
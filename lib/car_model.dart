import 'dart:convert';

class CarModel {
  String? carname;
  int? model;
  String? manufaturer;

  CarModel({
    this.carname,
    this.model,
    this.manufaturer,
  });

  factory CarModel.fromJson(Map<String, dynamic> json) => CarModel(
        carname: json['carname'],
        model: json['model'],
        manufaturer: json['manufaturer'],
      );

  Map<String, dynamic> toJson() => {
        'carname': carname,
        'model': model,
        'manufaturer': manufaturer,
      };
}

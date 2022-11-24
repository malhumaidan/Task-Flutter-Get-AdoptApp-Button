import 'package:adopt_app/models/pet.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PetsProvider extends ChangeNotifier {
  List<Pet> pets = [];
  bool isLoading = true;

  Future<List<Pet>> loadPets() async {
    isLoading = true;
    notifyListeners();

    Dio client = Dio();

    var response =
        await client.get("https://coded-pets-api-crud.herokuapp.com/pets");

    var body = response.data as List;

    pets = body.map((json) => Pet.fromJson(json)).toList();
    print(pets);

    isLoading = false;
    notifyListeners();
    return pets;
  }
}

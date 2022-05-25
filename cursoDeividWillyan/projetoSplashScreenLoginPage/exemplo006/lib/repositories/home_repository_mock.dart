import 'dart:convert';

import 'package:exemplo006/models/post_model.dart';
import 'package:exemplo006/repositories/home_repository.dart';
import 'package:flutter/services.dart';

class HomeRepositoryMock implements HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    var value = await rootBundle.loadString('assets/data.json');
    List postJson = jsonDecode(value);

    return postJson.map((e) => PostModel.fromJson(e)).toList();
  }
}

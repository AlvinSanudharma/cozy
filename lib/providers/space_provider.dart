import 'dart:convert';

import 'package:cozy/models/space.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier {
  // NOTE: fetch recommended API
  getRecommendedSpaces() async {
    var response =
        await http.get('http://bwa-cozy.herokuapp.com/recommended-spaces');

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      List<Space> spaces = data.map((e) => Space.fromJson(e)).toList();

      return spaces;
    } else {
      return <Space>[];
    }
  }
}

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:core';
import 'package:yomuno/domain/Book.dart';

Future<List<Book>> fetchBook() async {
  final response =
  await http.get('https://api.syosetu.com/novelapi/api/?libtype=2&out=json');
  final responseJson = json.decode(response.body);
  var result = List<Book>();
  for (var json in responseJson.sublist(1)) {
    result.add(new Book.fromJSON(json));
  }
  return result;
}
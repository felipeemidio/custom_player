import 'dart:convert';
import 'dart:io';

abstract class JsonLoader {
  const JsonLoader._();

  static dynamic _loadJsonFile(String name) =>
      jsonDecode(File('test/support/data/$name.json').readAsStringSync());

  static Map<String, dynamic> loadAsMap(String filename) {
    return Map<String, dynamic>.from(_loadJsonFile(filename));
  }

  static List<Map<String, dynamic>> loadAsList(String filename) {
    return List<Map<String, dynamic>>.from(_loadJsonFile(filename));
  }
}
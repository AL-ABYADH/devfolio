import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProjectUtils with ChangeNotifier {
  List<String> titles = [];

  List<String> description = [];

  List<String> banners = [];

  List<String> icons = [];

  List<String> links = [];

  Future<void> loadProjects() async {
    final url = Uri.parse(
        'https://upload-projects-7ec39-default-rtdb.firebaseio.com/projects.json');

    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;

      List<String> loadedTitles = [];
      List<String> loadedDescription = [];
      List<String> loadedBanners = [];
      List<String> loadedIcons = [];
      List<String> loadedLinks = [];

      for (var project in extractedData.values) {
        loadedTitles.add(project['title']);
        loadedDescription.add(project['description']);
        loadedBanners.add(project['bannerUrl']);
        loadedIcons.add(project['iconUrl']);
        loadedLinks.add(project['link']);
        titles = loadedTitles;
        description = loadedDescription;
        banners = loadedBanners;
        icons = loadedIcons;
        links = loadedLinks;
      }

      notifyListeners();
    } catch (err) {
      rethrow;
    }
  }
}

class Project {
  String title;
  String description;
  String link;
  String icon;
  String banner;

  Project({
    required this.title,
    required this.description,
    required this.link,
    required this.icon,
    required this.banner,
  });
}

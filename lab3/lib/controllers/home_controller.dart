import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lab2/models/user.dart';
import 'package:lab2/models/course.dart';
import 'package:lab2/models/category.dart';

class HomeController extends GetxController {
  final Rx<User> user = User(name: '', notifications: 0).obs;
  final RxList<Course> continueWatchingCourses = <Course>[].obs;
  final RxList<Category> categories = <Category>[].obs;
  final RxList<Course> suggestions = <Course>[].obs;
  final RxList<Course> topCourses = <Course>[].obs;

  final RxBool isLoading = false.obs;
  final RxBool isLoadingCourses = false.obs;

  final RxString errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    loadHomeData();
  }

  void loadHomeData() async {
    try {
      isLoading.value = true;
      errorMessage.value = '';

      final jsonString = await rootBundle.loadString(
        'lib/resources/jsons/v1.json',
      );
      final jsonData = json.decode(jsonString) as Map<String, dynamic>;
      final homeData = jsonData['home'] as Map<String, dynamic>;

      final userData = homeData['user'] as Map<String, dynamic>;
      user.value = User.fromJson(userData);

      final continueWatchingData =
          homeData['continueWatching'] as List<dynamic>;
      continueWatchingCourses.value = continueWatchingData
          .map(
            (courseJson) => Course.fromJson(courseJson as Map<String, dynamic>),
          )
          .toList();

      final categoriesData = homeData['categories'] as List<dynamic>;
      categories.value = categoriesData
          .map(
            (categoryJson) =>
                Category.fromJson(categoryJson as Map<String, dynamic>),
          )
          .toList();

      final suggestionsData = homeData['suggestions'] as List<dynamic>;
      suggestions.value = suggestionsData
          .map(
            (courseJson) => Course.fromJson(courseJson as Map<String, dynamic>),
          )
          .toList();

      final topCoursesData = homeData['topCourses'] as List<dynamic>;
      topCourses.value = topCoursesData
          .map(
            (courseJson) => Course.fromJson(courseJson as Map<String, dynamic>),
          )
          .toList();

      isLoading.value = false;
    } catch (e) {
      errorMessage.value = e.toString();
      isLoading.value = false;
    }
  }
}

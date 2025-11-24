import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lab2/models/course_detail.dart';

class CourseController extends GetxController {
  final Rxn<CourseDetail> courseDetail = Rxn<CourseDetail>();

  final RxBool isLoading = false.obs;

  final RxString errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    loadCourseDetails();
  }

  void loadCourseDetails() async {
    try {
      isLoading.value = true;
      errorMessage.value = '';

      final jsonString = await rootBundle.loadString(
        'lib/resources/jsons/v1.json',
      );
      final jsonData = json.decode(jsonString) as Map<String, dynamic>;
      final detailsData = jsonData['details'] as Map<String, dynamic>;

      final courseData = detailsData['course'] as Map<String, dynamic>;
      courseDetail.value = CourseDetail.fromJson(courseData);

      isLoading.value = false;
    } catch (e) {
      errorMessage.value = e.toString();
      isLoading.value = false;
    }
  }

  String getFormattedPrice() {
    if (courseDetail.value == null) return '';
    return '${courseDetail.value!.price}${courseDetail.value!.currency == 'USD' ? '\$' : courseDetail.value!.currency}';
  }

  String getFormattedEnrolledStudents() {
    if (courseDetail.value == null) return '';
    final students = courseDetail.value!.enrolledStudents;
    if (students >= 1000) {
      return '${(students / 1000).toStringAsFixed(1)}k students already enrolled';
    }
    return '$students students already enrolled';
  }

  List<({String iconPath, String title, String subtitle})>
  getCourseDetailsTableItems() {
    if (courseDetail.value == null) return [];

    String formatKeyAsTitle(String key) {
      final words = key
          .replaceAllMapped(RegExp(r'([A-Z])'), (match) => ' ${match.group(0)}')
          .trim()
          .split(' ');

      return words
          .map(
            (word) => word[0].toUpperCase() + word.substring(1).toLowerCase(),
          )
          .join(' ');
    }

    // Load courseDetails dynamically from the loaded data
    final courseDetailsData =
        courseDetail.value!.toJson()['courseDetails'] as Map<String, dynamic>?;

    if (courseDetailsData == null) return [];

    final iconMap = {
      'lectures': 'assets/icons/BookFilled.svg',
      'learningTime': 'assets/icons/TimeFilled.svg',
      'learningtime': 'assets/icons/TimeFilled.svg',
      'certification': 'assets/icons/AwardFilled.svg',
    };

    return courseDetailsData.entries.map((entry) {
      return (
        iconPath: iconMap[entry.key] ?? 'assets/icons/BookFilled.svg',
        title: formatKeyAsTitle(entry.key),
        subtitle: entry.value.toString(),
      );
    }).toList();
  }
}

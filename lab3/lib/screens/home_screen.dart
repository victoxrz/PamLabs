import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab2/controllers/home_controller.dart';
import 'package:lab2/resources/app_colors.dart';
import 'package:lab2/widgets/Continue_watching_card.dart';
import 'package:lab2/widgets/Section.dart';
import 'package:lab2/widgets/course_card.dart';
import 'package:lab2/widgets/home_screen_header.dart';
import 'package:lab2/widgets/home_screen_searchbar.dart';
import 'package:lab2/widgets/section_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.find<HomeController>();

    final outlinedButtonStyle = OutlinedButton.styleFrom(
      foregroundColor: AppColors.secondaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      side: const BorderSide(color: AppColors.primaryColor),
      textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
    );

    return Obx(() {
      if (homeController.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      }

      if (homeController.errorMessage.value.isNotEmpty) {
        return Center(
          child: Text('Error: ${homeController.errorMessage.value}'),
        );
      }

      return ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 21, right: 21, bottom: 12),
            child: HomeScreenHeader(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 21),
            child: HomeScreenSearchBar(),
          ),
          Section(
            title: SectionTitle(text: 'Continue Watching'),
            child: Obx(() {
              final courses = homeController.continueWatchingCourses;

              if (courses.isEmpty) {
                return const Padding(
                  padding: EdgeInsets.all(21.0),
                  child: Text('No courses in progress'),
                );
              }

              return Column(
                spacing: 4.0,
                children: courses.map((course) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21.0),
                    child: ContinueWatchingCard(
                      image: Image.network(
                        course.image,
                        width: 87,
                        height: 58,
                        fit: BoxFit.cover,
                      ),
                      title: course.title,
                      subtitle: course.institute,
                      progressPercent: course.progress ?? 0,
                      rating: course.rating,
                    ),
                  );
                }).toList(),
              );
            }),
          ),
          Section(
            title: SectionTitle(
              text: 'Categories',
              action: const SectionButton(text: "See All"),
            ),
            child: Obx(() {
              final categories = homeController.categories;

              if (categories.isEmpty) {
                return const SizedBox.shrink();
              }

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21.0),
                child: Wrap(
                  spacing: 8.0,
                  children: categories.map((category) {
                    return OutlinedButton(
                      onPressed: () {},
                      style: outlinedButtonStyle,
                      child: Text(category.name),
                    );
                  }).toList(),
                ),
              );
            }),
          ),
          Section(
            title: SectionTitle(
              text: 'Suggestions for You',
              action: const SectionButton(text: "See All"),
            ),
            child: Obx(() {
              final suggestions = homeController.suggestions;

              if (suggestions.isEmpty) {
                return const SizedBox.shrink();
              }

              return SizedBox(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 21),
                  children: suggestions.map((course) {
                    return CourseCard(
                      image: Image.network(
                        course.image,
                        width: 130,
                        height: 92,
                        fit: BoxFit.cover,
                      ),
                      title: course.title,
                      author: course.institute,
                      rating: course.rating,
                    );
                  }).toList(),
                ),
              );
            }),
          ),
          Section(
            title: SectionTitle(
              text: 'Top Courses',
              action: const SectionButton(text: "See All"),
            ),
            child: Obx(() {
              final topCourses = homeController.topCourses;

              if (topCourses.isEmpty) {
                return const SizedBox.shrink();
              }

              return SizedBox(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 21),
                  children: topCourses.map((course) {
                    return CourseCard(
                      image: Image.network(
                        course.image,
                        width: 130,
                        height: 92,
                        fit: BoxFit.cover,
                      ),
                      title: course.title,
                      author: course.institute,
                      rating: course.rating,
                    );
                  }).toList(),
                ),
              );
            }),
          ),
        ],
      );
    });
  }
}

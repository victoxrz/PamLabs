import 'package:flutter/material.dart';
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
    final outlinedButtonStyle = OutlinedButton.styleFrom(
      foregroundColor: AppColors.secondaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      side: const BorderSide(color: AppColors.primaryColor),
      textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
    );

    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 21, right: 21, bottom: 12),
          child: HomeScreenHeader(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21),
          child: const HomeScreenSearchBar(),
        ),
        Section(
          title: SectionTitle(text: 'Continue Watching'),
          child: Column(
            spacing: 4.0,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21.0),
                child: ContinueWatchingCard(
                  image: Image.network("https://picsum.photos/87/58.jpg"),
                  title: 'UI/UX Design Essentials',
                  subtitle: 'Tech Innovations University',
                  progressPercent: 79,
                  rating: 4.9,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21.0),
                child: ContinueWatchingCard(
                  image: Image.network("https://picsum.photos/87/58.jpg"),
                  title: 'UI/UX Design Essentials',
                  subtitle: 'Tech Innovations University',
                  progressPercent: 35,
                  rating: 4.7,
                ),
              ),
            ],
          ),
        ),
        Section(
          title: SectionTitle(
            text: 'Categories',
            action: const SectionButton(text: "See All"),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21.0),
            child: Wrap(
              spacing: 8.0,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: outlinedButtonStyle,
                  child: const Text('Graphic Design'),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: outlinedButtonStyle,
                  child: const Text('User Interface'),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: outlinedButtonStyle,
                  child: const Text('User Experience'),
                ),
              ],
            ),
          ),
        ),
        Section(
          title: SectionTitle(
            text: 'Suggestions for You',
            action: const SectionButton(text: "See All"),
          ),
          child: SizedBox(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 21),
              children: [
                CourseCard(
                  image: Image.network("https://picsum.photos/130/92.jpg"),
                  title: 'Typography and Layout Design',
                  author: 'Visual Communication College',
                  rating: 4.7,
                ),
                CourseCard(
                  image: Image.network("https://picsum.photos/130/92.jpg"),
                  title: 'Branding and Identity Design',
                  author: 'Innovation and Design School',
                  rating: 4.4,
                  isBookmarked: true,
                ),
                CourseCard(
                  image: Image.network("https://picsum.photos/130/92.jpg"),
                  title: 'Web Design Fundamentals',
                  author: 'Web Development University',
                  rating: 4.9,
                ),
              ],
            ),
          ),
        ),
        Section(
          title: SectionTitle(
            text: 'Top Courses',
            action: const SectionButton(text: "See All"),
          ),
          child: SizedBox(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 21),
              children: [
                CourseCard(
                  image: Image.network("https://picsum.photos/130/92.jpg"),
                  title: 'Animation and Motion Design',
                  author: 'Animation Institute of Digital Arts',
                  rating: 4.7,
                  isBookmarked: true,
                ),
                CourseCard(
                  image: Image.network("https://picsum.photos/130/92.jpg"),
                  title: 'Game Design and Development',
                  author: 'Game Development Academy',
                  rating: 4.4,
                  isBookmarked: true,
                ),
                CourseCard(
                  image: Image.network("https://picsum.photos/130/92.jpg"),
                  title: 'Product Design and Innovation',
                  author: 'Product Design Institute',
                  rating: 4.9,
                  isBookmarked: false,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

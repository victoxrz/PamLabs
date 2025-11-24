import 'package:flutter/material.dart';
import 'package:lab2/resources/app_colors.dart';

class ContinueWatchingCard extends StatelessWidget {
  final Image image;
  final String title;
  final String subtitle;
  final int progressPercent;
  final double rating;

  const ContinueWatchingCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.progressPercent,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 3, offset: Offset(0, 0)),
        ],
      ),
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Row(
            children: [
              ClipRRect(borderRadius: BorderRadius.circular(6.0), child: image),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: AppColors.secondaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Text(
                        subtitle,
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 7,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: AppColors.primaryColor,
                            size: 10,
                          ),
                          Text(
                            rating.toString(),
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 6,
                            ),
                          ),
                        ],
                      ),
                      LinearProgressIndicator(
                        borderRadius: BorderRadius.circular(5.0),
                        minHeight: 5.0,
                        value: progressPercent / 100,
                        backgroundColor: Color(0xFFD9D9D9),
                        valueColor: AlwaysStoppedAnimation<Color>(
                          AppColors.primaryColor,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '$progressPercent% Completed',
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                            color: Color(0xFF6C6C6C),
                            fontSize: 6,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

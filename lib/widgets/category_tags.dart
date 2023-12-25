// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class CategoryTags extends StatelessWidget {
  final String categoryTitle;
  final bool isSelected;
  final int duration;
  const CategoryTags(
      {Key? key,
      required this.categoryTitle,
      this.isSelected = false,
      required this.duration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.2 / 1,
      child: FadeInDown(
        delay: Duration(milliseconds: duration),
        child: Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              color: isSelected ? Colors.grey[200] : null,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              categoryTitle,
              style: TextStyle(fontSize: isSelected ? 20 : 17),
            ),
          ),
        ),
      ),
    );
  }
}

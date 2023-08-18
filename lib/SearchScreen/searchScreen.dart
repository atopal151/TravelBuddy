// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
            title: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
          Text.rich(
            TextSpan(
              text: 'Travel ',
              children: <TextSpan>[
                TextSpan(
                  text: 'Search',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ])));
  }
}
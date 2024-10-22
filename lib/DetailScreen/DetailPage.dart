// ignore_for_file: file_names

import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String title;
  final String message;
  final String locat;
  final String image;

  const DetailPage(
      {super.key,
      required this.message,
      required this.title,
      required this.locat,
      required this.image});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 150,
      automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w700,
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: Colors.black,
                  offset: Offset(3.0, 3.0),
                ),
              ],
            ),
          ),
        ),
        flexibleSpace:Image.network(
            widget.image,
            fit: BoxFit.cover,
          ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(widget.message), Text(widget.locat)],
        ),
      ),
    );
  }
}

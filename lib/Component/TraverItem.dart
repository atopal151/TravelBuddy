// ignore_for_file: file_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TravelItem {
  final String imageUrl;
  final String title;
  final String description;
  final String location;

  TravelItem(
      {required this.imageUrl,
      required this.title,
      required this.description,
      required this.location});
}

class TravelList extends StatefulWidget {
  const TravelList({super.key});

  @override
  State<TravelList> createState() => _TravelListState();
}

class _TravelListState extends State<TravelList> {
  List<TravelItem> travelItems = [];

  @override
  void initState() {
    super.initState();
    fetchTravelItems();
  }

  Future<void> fetchTravelItems() async {
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    final List<dynamic> data = json.decode(response.body);
    final List<TravelItem> items = data.map(
      (item) {
        return TravelItem(
            imageUrl: item['image_url'],
            title: item["title"],
            description: item["body"],
            location: item["location"]);
      },
    ).toList();
    setState(() {
      travelItems = items;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: travelItems.length,
      itemBuilder: (context, index) {
        final item = travelItems[index];
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              SizedBox(
                height: 150,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        height: 150,
                        width: 130,
                        child: Image.network(
                          item.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Text.rich(
                                TextSpan(
                                  text: 'Travel ',
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Buddy',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Text(
                            item.description,
                            style: const TextStyle(
                                fontSize: 12, color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              const Icon(Icons.location_on),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  item.location,
                                  style: const TextStyle(fontSize: 9),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.favorite_outline,
                            size: 18,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

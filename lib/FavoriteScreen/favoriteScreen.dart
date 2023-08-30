// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Component/TraverItem.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    List<TravelItem> travelItems = [
      TravelItem(
        imageUrl:
            "https://ares.shiftdelete.net/2022/05/yaz-tatili-villa-kiralama.jpg",
        title: "Travel Buddy 1",
        description: "Description 1",
        location: "Location 1",
      ),
      TravelItem(
        imageUrl:
            "https://ares.shiftdelete.net/2022/05/yaz-tatili-villa-kiralama.jpg",
        title: "Travel Buddy 2",
        description: "Description 2",
        location: "Location 2",
      ),
      TravelItem(
        imageUrl:
            "https://ares.shiftdelete.net/2022/05/yaz-tatili-villa-kiralama.jpg",
        title: "Travel Buddy 3",
        description: "Description 3",
        location: "Location 3",
      ),
      TravelItem(
        imageUrl:
            "https://ares.shiftdelete.net/2022/05/yaz-tatili-villa-kiralama.jpg",
        title: "Travel Buddy 4",
        description: "Description 4",
        location: "Location 4",
      ),
      TravelItem(
        imageUrl:
            "https://ares.shiftdelete.net/2022/05/yaz-tatili-villa-kiralama.jpg",
        title: "Travel Buddy 5",
        description: "Description 5",
        location: "Location 5",
      ),
      TravelItem(
        imageUrl:
            "https://ares.shiftdelete.net/2022/05/yaz-tatili-villa-kiralama.jpg",
        title: "Travel Buddy 6",
        description: "Description 6",
        location: "Location 6",
      ),
      TravelItem(
        imageUrl:
            "https://ares.shiftdelete.net/2022/05/yaz-tatili-villa-kiralama.jpg",
        title: "Travel Buddy 7",
        description: "Description 7",
        location: "Location 7",
      ),
      TravelItem(
        imageUrl:
            "https://ares.shiftdelete.net/2022/05/yaz-tatili-villa-kiralama.jpg",
        title: "Travel Buddy 8",
        description:
            "Description DescriptionDescriptionDescriptionDescriptionDescriptionDescription8",
        location: "Location 8",
      ),
      TravelItem(
        imageUrl:
            "https://ares.shiftdelete.net/2022/05/yaz-tatili-villa-kiralama.jpg",
        title: "Travel Buddy 9",
        description: "Description 9",
        location: "Location 9",
      ),
      TravelItem(
        imageUrl:
            "https://ares.shiftdelete.net/2022/05/yaz-tatili-villa-kiralama.jpg",
        title: "Travel Buddy 10",
        description: "Description 10",
        location: "Location 10",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
          title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            Text.rich(
              TextSpan(
                text: 'Travel ',
                children: <TextSpan>[
                  TextSpan(
                    text: 'Favorite',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ])),
      body: ListView(
        children: [
          SizedBox(
            height: 635,
            child: ListView.builder(
              itemCount: travelItems.length,
              itemBuilder: (context, index) {
                final item = travelItems[index];

                return Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 12,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.black38)),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                          child: SizedBox(
                            height: 150,
                            width: 130,
                            child: Image.network(
                              item.imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        style: TextStyle(fontSize: 16),
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
                                padding: const EdgeInsets.only(left: 12.0,right: 10),
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
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: avoid_print, file_names

import 'package:flutter/material.dart';

import '../Component/TraverItem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> sehirler = [
    'İstanbul',
    'Ankara',
    'İzmir',
    'Bursa',
    'Antalya',
    "Manisa",
    "Uşak"
  ];

  List<TravelItem> travelItems = [
    TravelItem(
      imageUrl:
          "https://media.istockphoto.com/id/1392494719/tr/foto%C4%9Fraf/woman-with-pink-suitcase-and-passport-with-boarding-pass-standing-on-passengers-ladder-of.jpg?s=612x612&w=0&k=20&c=6SBMKjk1vXi5qbfaZSMOnX7XRC0x6UPcu_rwXShGXaY=",
      title: "Travel Buddy 1",
      description: "Description 1",
      location: "Location 1",
    ),
    TravelItem(
      imageUrl:
          "https://media.istockphoto.com/id/1392494719/tr/foto%C4%9Fraf/woman-with-pink-suitcase-and-passport-with-boarding-pass-standing-on-passengers-ladder-of.jpg?s=612x612&w=0&k=20&c=6SBMKjk1vXi5qbfaZSMOnX7XRC0x6UPcu_rwXShGXaY=",
      title: "Travel Buddy 2",
      description: "Description 2",
      location: "Location 2",
    ),
    TravelItem(
      imageUrl:
          "https://media.istockphoto.com/id/1392494719/tr/foto%C4%9Fraf/woman-with-pink-suitcase-and-passport-with-boarding-pass-standing-on-passengers-ladder-of.jpg?s=612x612&w=0&k=20&c=6SBMKjk1vXi5qbfaZSMOnX7XRC0x6UPcu_rwXShGXaY=",
      title: "Travel Buddy 3",
      description: "Description 3",
      location: "Location 3",
    ),
    TravelItem(
      imageUrl:
          "https://media.istockphoto.com/id/1392494719/tr/foto%C4%9Fraf/woman-with-pink-suitcase-and-passport-with-boarding-pass-standing-on-passengers-ladder-of.jpg?s=612x612&w=0&k=20&c=6SBMKjk1vXi5qbfaZSMOnX7XRC0x6UPcu_rwXShGXaY=",
      title: "Travel Buddy 4",
      description: "Description 4",
      location: "Location 4",
    ),
    TravelItem(
      imageUrl:
          "https://media.istockphoto.com/id/1392494719/tr/foto%C4%9Fraf/woman-with-pink-suitcase-and-passport-with-boarding-pass-standing-on-passengers-ladder-of.jpg?s=612x612&w=0&k=20&c=6SBMKjk1vXi5qbfaZSMOnX7XRC0x6UPcu_rwXShGXaY=",
      title: "Travel Buddy 5",
      description: "Description 5",
      location: "Location 5",
    ),
    TravelItem(
      imageUrl:
          "https://media.istockphoto.com/id/1392494719/tr/foto%C4%9Fraf/woman-with-pink-suitcase-and-passport-with-boarding-pass-standing-on-passengers-ladder-of.jpg?s=612x612&w=0&k=20&c=6SBMKjk1vXi5qbfaZSMOnX7XRC0x6UPcu_rwXShGXaY=",
      title: "Travel Buddy 6",
      description: "Description 6",
      location: "Location 6",
    ),
    TravelItem(
      imageUrl:
          "https://media.istockphoto.com/id/1392494719/tr/foto%C4%9Fraf/woman-with-pink-suitcase-and-passport-with-boarding-pass-standing-on-passengers-ladder-of.jpg?s=612x612&w=0&k=20&c=6SBMKjk1vXi5qbfaZSMOnX7XRC0x6UPcu_rwXShGXaY=",
      title: "Travel Buddy 7",
      description: "Description 7",
      location: "Location 7",
    ),
    TravelItem(
      imageUrl:
          "https://media.istockphoto.com/id/1392494719/tr/foto%C4%9Fraf/woman-with-pink-suitcase-and-passport-with-boarding-pass-standing-on-passengers-ladder-of.jpg?s=612x612&w=0&k=20&c=6SBMKjk1vXi5qbfaZSMOnX7XRC0x6UPcu_rwXShGXaY=",
      title: "Travel Buddy 8",
      description:
          "Description DescriptionDescriptionDescriptionDescriptionDescriptionDescription8",
      location: "Location 8",
    ),
    TravelItem(
      imageUrl:
          "https://media.istockphoto.com/id/1392494719/tr/foto%C4%9Fraf/woman-with-pink-suitcase-and-passport-with-boarding-pass-standing-on-passengers-ladder-of.jpg?s=612x612&w=0&k=20&c=6SBMKjk1vXi5qbfaZSMOnX7XRC0x6UPcu_rwXShGXaY=",
      title: "Travel Buddy 9",
      description: "Description 9",
      location: "Location 9",
    ),
    TravelItem(
      imageUrl:
          "https://media.istockphoto.com/id/1392494719/tr/foto%C4%9Fraf/woman-with-pink-suitcase-and-passport-with-boarding-pass-standing-on-passengers-ladder-of.jpg?s=612x612&w=0&k=20&c=6SBMKjk1vXi5qbfaZSMOnX7XRC0x6UPcu_rwXShGXaY=",
      title: "Travel Buddy 10",
      description: "Description 10",
      location: "Location 10",
    ),
  ];

  String? secilenSehir; // Seçilen şehiri burada saklayacağız

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text.rich(
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: const Icon(Icons.add, color: Colors.white),
                    onPressed: () {
                      // Eylem yapılacak işlevi buraya ekleyebilirsiniz
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      backgroundColor: Colors.black, // Arkaplan rengi
                      padding: const EdgeInsets.all(
                          2.0), // İç içe geçmiş alana boşluk eklemek için
                    ),
                  ),
                ),
                const Icon(Icons.search),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: SizedBox(
                          height: 80,
                          width: 60,
                          child: Image.asset(
                            "images/img${index + 1}.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0,
                                    3), // değiştirerek gölgenin yönünü ayarlayabilirsiniz
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "images/img${index + 1}.jpeg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Öneriler",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Çerçeve rengi
                    width: 1.0, // Çerçeve kalınlığı
                  ),
                  borderRadius:
                      BorderRadius.circular(30.0), // Çerçeve yuvarlaklığı
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 15.0, left: 20.0),
                  child: DropdownButton<String>(
                    value: secilenSehir,
                    items: sehirler.map((String sehir) {
                      return DropdownMenuItem<String>(
                        value: sehir,
                        child: Text(sehir),
                      );
                    }).toList(),
                    onChanged: (String? yeniSehir) {
                      setState(() {
                        secilenSehir = yeniSehir;
                        print('Seçilen şehir: $secilenSehir');
                      });
                    },
                    hint: const Text('Bir şehir seçin'),
                    style: const TextStyle(
                      fontSize: 16.0, // Metin boyutu
                      color: Colors.black, // Metin rengi
                    ),
                    icon:
                        const Icon(Icons.arrow_drop_down), // Açılır ok simgesi
                    isExpanded: true, // Açılır kutunun genişlemesini sağlar
                    underline: const SizedBox(), // Alt çizgiyi kaldırır
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 450,
            child: ListView.builder(
              itemCount: travelItems.length,
              itemBuilder: (context, index) {
                final item = travelItems[index];

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox(
                              height: 250,
                              width: 400,
                              child: Image.network(
                                item.imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Icon(
                                      Icons.favorite_outline,
                                      size: 28,
                                    ),
                                  )
                                ],
                              ),
                             
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                     const  Text.rich(
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
                                      Text(
                                        item.description,
                                        style: const TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                      
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
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
                        ],
                      ),
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

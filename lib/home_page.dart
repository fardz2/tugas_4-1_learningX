import 'package:flutter/material.dart';
import 'package:flutter_application_tugas4_1/component/category.dart';
import 'package:flutter_application_tugas4_1/component/cus_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;
  static const List<Map<String, String>> items = [
    {"icon": "images/all.png", "text": "All"},
    {"icon": "images/makanan.png", "text": "Makanan"},
    {"icon": "images/buah.png", "text": "Buah"},
    {"icon": "images/minuman.png", "text": "Minuman"},
  ];
  static const List<Map<String, dynamic>> receps = [
    {
      "image": "images/apple pie.jpg",
      "title": "Apple pie",
      "waktu": "50 menit",
      "status": "menunggu"
    },
    {
      "image": "images/burger.jpg",
      "title": "Burger",
      "waktu": "50 menit",
      "status": "menunggu"
    },
    {
      "image": "images/karage.jpg",
      "title": "Karege",
      "waktu": "50 menit",
      "status": "menunggu"
    },
    {
      "image": "images/ramen.jpg",
      "title": "Ramen",
      "waktu": "50 menit",
      "status": "stop"
    },
    {
      "image": "images/takoyaki.jpg",
      "title": "Takoyaki",
      "waktu": "50 menit",
      "status": "menunggu"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 2,
                    child: Center(
                      child: Text(
                        title,
                        style: const TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.3),
                        contentPadding: const EdgeInsets.all(1),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              width: 1, color: Colors.grey.withOpacity(0.1)),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'Search',
                        prefixIcon: const Icon(Icons.search),
                      ),
                      minLines: 1,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Katalog Resep Makanan",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings,
                        color: Colors.red,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 40,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index) => index == 0
                        ? Category(
                            icon: items[index]["icon"].toString(),
                            text: items[index]["text"].toString(),
                            coloractive: Colors.red,
                            coloractivetext: Colors.white,
                          )
                        : Category(
                            icon: items[index]["icon"].toString(),
                            text: items[index]["text"].toString(),
                          )),
              ),
            ),
            SizedBox(
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                padding: const EdgeInsets.all(8),

                shrinkWrap: true, // Menambahkan shrinkWrap
                children: List.generate(
                    receps.length,
                    (index) => CusCard(
                          image: receps[index]["image"],
                          title: receps[index]["title"],
                          status: receps[index]["status"],
                          waktu: receps[index]["waktu"],
                        )),
              ),
            )
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tugas1/data_dummy.dart';
import 'package:tugas1/view/detail_page.dart';

import '../text_string.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2f2f2),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        bottomOpacity: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.sort_outlined,
            color: Color(0xff4a4543),
            size: 24.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_outlined,
              color: Color(0xff4a4543),
              size: 24.0,
            ),
          ),
        ],
        title: Text(
          'Home',
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 14.0),
            child: Text(
              TextString.discover,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          SizedBox(
              height: 35.0,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Category(
                    nameCategory: "All",
                    color: Color(0xff9a9390),
                  ),
                  Category(nameCategory: "Living Room"),
                  Category(nameCategory: "Badrrom"),
                  Category(nameCategory: "Dining Room"),
                  Category(nameCategory: "Kitchen")
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 14.0),
            child: Text(
              'Recommended Furniture',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          const CustomGridView()
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category({super.key, required this.nameCategory, this.color});
  final String nameCategory;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33.0,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 5.0),
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(15.0), color: color
              // color: const Color(0xff9a9390),
              ),
      child: Text(
        nameCategory,
        style: Theme.of(context).textTheme.caption,
      ),
    );
  }
}

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 470,
      padding: const EdgeInsets.all(15.0),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 15.0,
        crossAxisSpacing: 20.0,
        childAspectRatio: 0.8,
        children: dataProducts.map((data) {
          final image = data["image"] as String;
          final nameProduct = data["nameProduct"] as String;
          final price = data['price'];
          final star = data["star"] as double;
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    data: data,
                  ),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.asset(image, fit: BoxFit.cover),
                        Positioned(
                          top: 10.0,
                          left: 10.0,
                          child: Container(
                            height: 34.0,
                            width: 34.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white),
                            child: const Icon(
                              Icons.favorite_outline,
                              color: Color(0xffEE3127),
                            ),
                          ),
                        )
                      ],
                    ),
                    Text(
                      nameProduct,
                      style: Theme.of(context).textTheme.caption!,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$$price",
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff9a9390),
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star_outlined,
                                color: Colors.yellow,
                              ),
                              Text(
                                star.toString(),
                                style: const TextStyle(
                                    fontSize: 14.0, color: Color(0xffBBBBBB)),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

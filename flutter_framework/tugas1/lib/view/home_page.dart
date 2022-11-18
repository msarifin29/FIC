import 'package:flutter/material.dart';
import 'package:tugas1/data_dummy.dart';
import 'package:tugas1/view/detail_page.dart';

import '../const/text_string.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2f2f2),
      appBar: PreferredSize(
        preferredSize: Size(
          MediaQuery.of(context).size.width,
          kToolbarHeight,
        ),
        child: AppBar(
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
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.only(
                      top: 20.0, left: 14.0, bottom: 10.0),
                  child: Text(
                    TextString.discover,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                Container(
                  height: 35.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: TextString.category.length,
                    itemBuilder: (context, index) {
                      const category = TextString.category;
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(horizontal: 14.0),
                          margin: const EdgeInsets.only(left: 10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.0),
                              color: index == 0
                                  ? Colors.green
                                  : Colors.transparent),
                          child: Text(
                            category[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 14.0),
                  child: Text(
                    TextString.recommended,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: CustomGridView(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15.0,
        crossAxisSpacing: 20.0,
        childAspectRatio: 0.75,
      ),
      itemCount: dataProducts.length,
      itemBuilder: (BuildContext context, int index) {
        final image = dataProducts[index]["image"] as String;
        final nameProduct = dataProducts[index]["nameProduct"] as String;
        final price = dataProducts[index]['price'];
        final star = dataProducts[index]["star"] as double;
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(
                  data: dataProducts[index],
                ),
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                    child: Text(
                      nameProduct,
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffADADAD),
                          ),
                    ),
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
                            ),
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
      },
    );
  }
}

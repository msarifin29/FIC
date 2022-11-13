import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final category = [
      'All',
      'Living Room',
      'Bedroom',
      'Dining Room',
      'Kitchen'
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        bottomOpacity: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.sort_outlined, color: Color(0xff4a4543)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_outlined,
              color: Color(0xff4a4543),
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
            height: 33.0,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: category.length,
              itemBuilder: (ctx, i) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 4.0, vertical: 15.0),
                child: Text(category[i],
                    style: Theme.of(context).textTheme.caption),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 14.0),
            child: Text(
              'Recommended Furniture',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
        ],
      ),
    );
  }
}

class TextString {
  static const discover = '''
Discover the most
modern furniture
 ''';
}

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../text_string.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.data});
  final Map data;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        widget.data['image'],
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 32.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 60.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Icon(
                                    Icons.arrow_back,
                                    size: 32.0,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 60.0),
                                  child: Text("Detail",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1),
                                ),
                                SizedBox(
                                  width: 84,
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.all(10),
                                        width: 36.0,
                                        height: 36.0,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(
                                              8.0,
                                            ),
                                          ),
                                        ),
                                        child: const Icon(
                                          Icons.favorite_border,
                                          color: Colors.red,
                                          size: 24.0,
                                        ),
                                      ),
                                      const Icon(
                                        Icons.share_outlined,
                                        size: 26.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 400),
                  height: 380.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        36.0,
                      ),
                      topRight: Radius.circular(
                        36.0,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Container(
                          width: 40.0,
                          height: 6.0,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(4.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(widget.data['nameProduct'],
                                  style: Theme.of(context).textTheme.headline5),
                              Text("\$ ${widget.data['price']}",
                                  style: Theme.of(context).textTheme.headline4),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: RatingBar.builder(
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            onRatingUpdate: (rating) {},
                            itemSize: 20,
                            initialRating: 4,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 120.0,
                                child: Text("Select Quality :",
                                    style:
                                        Theme.of(context).textTheme.subtitle2),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 14.0),
                                width: 94.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.0,
                                    color: Colors.grey,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(24.0),
                                  ),
                                ),
                                child: SizedBox(
                                  height: 100.0,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Icon(
                                        Icons.remove,
                                        color: Colors.grey,
                                        size: 20.0,
                                      ),
                                      Container(
                                        width: 32,
                                        decoration: const BoxDecoration(
                                          color: Color(0xffE7E7E7),
                                        ),
                                        child: Center(
                                          child: Text("2",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1),
                                        ),
                                      ),
                                      const Icon(
                                        Icons.add,
                                        color: Colors.grey,
                                        size: 20.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        SizedBox(
                          height: 80.0,
                          child: Text(TextString.lorem,
                              textAlign: TextAlign.start,
                              style: Theme.of(context).textTheme.bodyText2),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        SizedBox(
                          height: 44.0,
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              backgroundColor: const Color(0xff9A9390),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "ADD TO CART",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:transition_practice_project/screen/shoes.dart';
import 'package:transition_practice_project/widgets/category_tags.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: null,
          title: const Text(
            "Shoes",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.notifications_none)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CategoryTags(
                          duration: 100,
                          categoryTitle: "ALL",
                          isSelected: true,
                        ),
                        CategoryTags(
                          duration: 120,
                          categoryTitle: "Sneakers",
                        ),
                        CategoryTags(
                          duration: 130,
                          categoryTitle: "Football",
                        ),
                        CategoryTags(
                          duration: 140,
                          categoryTitle: "Soccer",
                        ),
                        CategoryTags(
                          duration: 150,
                          categoryTitle: "Golf",
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                FadeInDown(
                    delay: const Duration(milliseconds: 500),
                    child: makeItem('assets/images/one.jpg', 'red', context)),
                FadeInDown(
                    delay: const Duration(milliseconds: 600),
                    child: makeItem('assets/images/two.jpg', 'blue', context)),
                FadeInDown(
                    delay: const Duration(milliseconds: 700),
                    child:
                        makeItem('assets/images/three.jpg', 'white', context)),
              ],
            ),
          ),
        ));
  }

  Widget makeItem(image, tag, context) {
    return Hero(
        tag: tag,
        child: Material(
          child: GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Shoes(
                    imgUrl: image,
                    tag: tag,
                  ),
                )),
            child: Container(
              height: 250,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[400]!,
                        blurRadius: 10,
                        offset: const Offset(0, 10))
                  ],
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FadeInDown(
                            delay: const Duration(milliseconds: 500),
                            child: const Text(
                              "Sneakers",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          FadeInDown(
                            delay: const Duration(milliseconds: 520),
                            child: const Text(
                              "Nike",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      )),
                      FadeInDown(
                        delay: const Duration(milliseconds: 530),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.favorite_border,
                              size: 20,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 540),
                    child: const Text(
                      "100\$",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

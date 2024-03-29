import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propertyhub/propertyditels.dart';

class ShortlistedPage extends StatefulWidget {
  const ShortlistedPage({super.key});

  @override
  State<ShortlistedPage> createState() => _ShortlistedPageState();
}

class _ShortlistedPageState extends State<ShortlistedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black54,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
        title: Text("Shortlisted"),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.message_outlined),
            ),
          ),
        ],
      ),
      body:  ListView.separated(
        shrinkWrap: true,
        itemCount: 3,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 19.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(
                    0.0,
                    0.0,
                  ),
                  blurRadius: 5.0,
                  spreadRadius: 5.0,
                ), //BoxShadow
              ],
            ),
            child: Column(
              children: [
                Container(
                  height: 150,
                  padding: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 10.0),
                  child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                          5,
                              (index) => Container(
                            margin: const EdgeInsets.only(right: 5),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  CupertinoPageRoute(
                                    fullscreenDialog: true,
                                    builder: (context) {
                                      return const PropertyDitels();
                                    },
                                  ),
                                );
                              },
                              child: Stack(
                                children: [
                                  Image.asset(
                                    "assets/img/home1.jpg",
                                    fit: BoxFit.cover,
                                    height: 150,
                                    width: 230,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ))),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Alise Altezza"),
                      Text("\$750k"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9),
                      child: Text(
                        "Near Worli Sea Link,Worli...",
                        style: TextStyle(color: Colors.grey[350]),
                      ),
                    ),
                    Text(
                      "3 BHK, 4500sq. ft",
                      style: TextStyle(color: Colors.grey[350]),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 20,);
        },
      ),
    );
  }
}

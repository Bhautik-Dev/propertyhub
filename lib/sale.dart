import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propertyhub/filter.dart';
import 'package:propertyhub/home.dart';
import 'package:propertyhub/map.dart';
import 'package:propertyhub/propertyditels.dart';

class SalePage extends StatefulWidget {
  const SalePage({super.key});

  @override
  State<SalePage> createState() => _SalePageState();
}

class _SalePageState extends State<SalePage> {
  String gValue = "Relevance";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black54,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              CupertinoPageRoute(
                fullscreenDialog: true,
                builder: (context) {
                  return const Home();
                },
              ),
            );
          },
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Sale"),
            SizedBox(
              height: 5,
            ),
            Text(
              "330 Properties",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        actions: [
          InkWell(
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            onTap: () {},
          ),
          InkWell(
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.message_outlined),
            ),
            onTap: () {},
          ),
          InkWell(
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.map),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                CupertinoPageRoute(
                  fullscreenDialog: true,
                  builder: (context) {
                    return const MapPage();
                  },
                ),
              );
            },
          ),
          const SizedBox(
            width: 16,
          )
        ],
      ),
      body: ListView(shrinkWrap: true, children: [
        Column(
          children: [
            Container(
              height: 50,
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _settingModalBottomSheet(context);
                      },
                      child: Container(
                        height: 50,
                        decoration: const BoxDecoration(
                            border: BorderDirectional(
                                end: BorderSide(color: Colors.black12))),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.sort,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Sort"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            fullscreenDialog: true,
                            builder: (context) {
                              return const FilterPage();
                            },
                          ),
                        );
                      },
                      child: Container(
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.tune,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Filter"),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListView.separated(
              shrinkWrap: true,
              itemCount: 4,
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
                                              Icons.favorite_border,
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
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ]),
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return StatefulBuilder(
            builder: (context, setState) {
              return Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Sort by",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RadioListTile(
                    value: "Relevance",
                    groupValue: gValue,
                    onChanged: (val) {
                      gValue = val!;
                      setState(() {});
                    },
                    title: const Text("Relevance"),
                  ),
                  RadioListTile(
                    value: "Most Recent",
                    groupValue: gValue,
                    onChanged: (val) {
                      gValue = val!;
                      setState(() {});
                    },
                    title: const Text("Most Recent"),
                  ),
                  RadioListTile(
                    value: "Price:Low To High ",
                    groupValue: gValue,
                    onChanged: (val) {
                      gValue = val!;
                      setState(() {});
                    },
                    title: const Text("Price:Low To High"),
                  ),
                  RadioListTile(
                    value: "Price:High To Low",
                    groupValue: gValue,
                    onChanged: (val) {
                      gValue = val!;
                      setState(() {});
                    },
                    title: const Text("Price: High To Low"),
                  ),
                ],
              ));
            },
          );
        });
  }
}

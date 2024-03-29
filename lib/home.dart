import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propertyhub/about%20us.dart';
import 'package:propertyhub/contactus.dart';
import 'package:propertyhub/loginpage.dart';
import 'package:propertyhub/lunguage.dart';
import 'package:propertyhub/messages.dart';
import 'package:propertyhub/notification.dart';
import 'package:propertyhub/propertyditels.dart';
import 'package:propertyhub/sale.dart';
import 'package:propertyhub/settings.dart';
import 'package:propertyhub/shortlisted.dart';
import 'package:propertyhub/terms%20&%20conditions.dart';
import 'package:propertyhub/thisapp.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/img/drawer 1.jpg",
                  height: 250,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 85, left: 30),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/img/Avatar.jpg"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sachin Parekh",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "View Profile",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.favorite,
              ),
              title: const Text('Shortlisted'),
              onTap: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    fullscreenDialog: true,
                    builder: (context) {
                      return const ShortlistedPage();
                    },
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.chat_outlined,
              ),
              title: const Text('My Chats'),
              onTap: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    fullscreenDialog: true,
                    builder: (context) {
                      return const Messages();
                    },
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
              ),
              title: const Text('Settings'),
              onTap: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    fullscreenDialog: true,
                    builder: (context) {
                      return const SettingPage();
                    },
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.sticky_note_2_outlined,
              ),
              title: const Text('Terms & Conditions'),
              onTap: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    fullscreenDialog: true,
                    builder: (context) {
                      return const TermsAndConditions();
                    },
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.info,
              ),
              title: const Text('About us'),
              onTap: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    fullscreenDialog: true,
                    builder: (context) {
                      return const AboutPage();
                    },
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.phone_callback_outlined,
              ),
              title: const Text('Contact us'),
              onTap: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    fullscreenDialog: true,
                    builder: (context) {
                      return const ContactUsPage();
                    },
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.thumb_up,
              ),
              title: const Text('Rate us'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.language_outlined,
              ),
              title: const Text('Change Language'),
              onTap: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    fullscreenDialog: true,
                    builder: (context) {
                      return const Lunguage();
                    },
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.directions_run_outlined,
              ),
              title: const Text('Sign out'),
              onTap: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    fullscreenDialog: true,
                    builder: (context) {
                      return const LogInPage();
                    },
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    fullscreenDialog: true,
                    builder: (context) {
                      return const BuyThisApp();
                    },
                  ),
                );
              },
              child: Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.blue),
                child: const Center(
                    child: Text(
                  "Buy this app",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Text("Developed by : Coding House"),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: 300,
            child: Stack(
              children: [
                Image.asset(
                  "assets/img/home.jfif",
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 300,
                  width: double.maxFinite,
                  color: Colors.black.withOpacity(0.5),
                ),
                AppBar(
                  backgroundColor: Colors.transparent,
                  leading: IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      scaffoldKey.currentState?.openDrawer();
                    },
                  ),
                  title: const Text("PropertyHub"),
                  actions: [
                    IconButton(
                      icon: const Icon(
                        Icons.message_outlined,
                        size: 20,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            fullscreenDialog: true,
                            builder: (context) {
                              return const Messages();
                            },
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.notifications,
                        size: 20,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            fullscreenDialog: true,
                            builder: (context) {
                              return const NotificationPage();
                            },
                          ),
                        );
                      },
                    )
                  ],
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Real Estate",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Made Simple",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 19.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(
                            0.0,
                            0.0,
                          ),                          blurRadius: 5.0,
                          spreadRadius: 5.0,
                        ), //BoxShadow
                      ],
                    ),
                    child: DefaultTabController(
                      length: 3,
                      child: TabBar(
                        onTap: (index) {
                          if (index == 0) {
                            Navigator.of(context).push(
                              CupertinoPageRoute(
                                fullscreenDialog: true,
                                builder: (context) {
                                  return const SalePage();
                                },
                              ),
                            );
                          } else if (index == 1) {
                            Navigator.of(context).push(
                              CupertinoPageRoute(
                                fullscreenDialog: true,
                                builder: (context) {
                                  return const SalePage();
                                },
                              ),
                            );
                          } else {
                            Navigator.of(context).push(
                              CupertinoPageRoute(
                                fullscreenDialog: true,
                                builder: (context) {
                                  return const SalePage();
                                },
                              ),
                            );
                          }
                        },
                        tabs: [
                          Tab(
                            child: Text(
                              "Buy",
                              style: TextStyle(color: Colors.grey[350]),
                            ),
                          ),
                          Tab(
                              child: Text(
                            "Rent",
                            style: TextStyle(color: Colors.grey[350]),
                          )),
                          Tab(
                              child: Text(
                            "Sale",
                            style: TextStyle(color: Colors.grey[350]),
                          )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 19.0),
            padding: const EdgeInsets.symmetric(horizontal: 19.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              boxShadow: [
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
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: const Icon(Icons.search_rounded),
                  hintText: "Search by location, property, landmark...",
                  hintStyle: TextStyle(fontSize: 12, color: Colors.grey[350])),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Featured Properties",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.separated(
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
                                          const Icon(
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
              return const SizedBox(
                height: 15,
              );
            },
          ),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}

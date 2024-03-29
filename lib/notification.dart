import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propertyhub/home.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<Map<String, dynamic>> notificationList = [

  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notificationList.add({
      'image': 'assets/img/circle-home-building-logo.webp',
      'title': 'New Property In Your Area',
      'msg': 'Near Worli Sea Link, Worli,Mumbai',
    });

    notificationList.add({
      'image': 'assets/img/home logo1.png',
      'title': 'Hurry ! Book With 5 Lakh.',
      'msg': '3 BHK Flat at Jogeshwari With 5 Lakh Only.',
    });

    notificationList.add({
      'image': 'assets/img/circle-home-building-logo.webp',
      'title': 'Property You May Interested.',
      'msg': 'Sliver Tower Near Andheri West,Mumbai',
    });
    notificationList.add({
      'image': 'assets/img/home logo1.png',
      'title': 'New Property In Your Area',
      'msg': 'Near Worli Sea Link, Worli,Mumbai',
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              CupertinoPageRoute(
                fullscreenDialog: true,
                builder: (context) {
                  return const Home();
                },
              ),
            );
          },
        ),
        elevation: 0,
        backgroundColor: Colors.black54,
        title: const Text("Notification"),
      ),
      body: ListView.separated(
        itemCount: notificationList.length,
        separatorBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Container(
              color: Colors.white12,
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        AssetImage(notificationList[index]['image']),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        notificationList[index]['title'],
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        notificationList[index]['msg'],
                        style: TextStyle(fontSize: 14, color: Colors.grey[400]),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.black38,
            height: 1.5,
            width: double.maxFinite,
          );
        },
      ),
    );
  }
}

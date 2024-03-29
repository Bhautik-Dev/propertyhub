import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propertyhub/chat.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  List<Map<String,dynamic>> messageList =[

  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    messageList.add({
      "img":"assets/img/Avatar.jpg",
      "title":"Bhautik",
      "msg":"Sorry to say that price is not negotiable",
      "lastSeen":"Today",
    });
    messageList.add({
      "img":"assets/img/Avatar.jpg",
      "title":"Prince",
      "msg":"Sorry to say that price is not negotiable",
      "lastSeen":"Today",
    });
    messageList.add({
      "img":"assets/img/Avatar.jpg",
      "title":"Vatsal",
      "msg":"Sorry to say that price is not negotiable",
      "lastSeen":"Today",
    });
    messageList.add({
      "img":"assets/img/Avatar.jpg",
      "title":"Nehal",
      "msg":"Sorry to say that price is not negotiable",
      "lastSeen":"Today",
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {
          Navigator.pop(context);
        },),
        elevation: 0,
        backgroundColor: Colors.black54,
        title: const Text("Messages"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: ListView.separated(
        itemCount: messageList.length,
        itemBuilder: (context, index) {
        return
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  fullscreenDialog: true,
                  builder: (context) {
                    return const ChatPage();
                  },
                ),
              );
            },
            child: Container(
            height: 8,
            margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),

            decoration: BoxDecoration(
                color: Colors.white70, borderRadius: BorderRadius.circular(10),
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
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(messageList[index]['img']),
                        ),
                        const SizedBox(width: 15,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(messageList[index]['title'],style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              const SizedBox(height: 5,),
                              Text(messageList[index]['msg'],style: const TextStyle(color: Colors.black38),),
                              // Text("negotiable",style: TextStyle(color: Colors.black38),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10,top: 2),
                          child: Text(messageList[index]['lastSeen']??'',style: const TextStyle(color: Colors.black38),),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
        ),
          );
      }, separatorBuilder: (BuildContext context, int index) { return const SizedBox(height: 12,); },)
    );
  }
}

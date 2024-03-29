import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<Map<String, dynamic>> chatList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    chatList.add({
      "msg": "Hello! I am intrested in this property",
      "sended": true,
    });
    chatList.add({
      "msg": "Hey! I really appreciate your choice of home.",
      "sended": false,
      "time":"11:58am",
    });
    chatList.add({
      "msg": "Really like the parking space in front.",
      "sended": true,
    });
    chatList.add({
      "msg": "Hey! I really appreciate your choice of home.",
      "sended": false,
      "time":"11:58am",
    });
    chatList.add({
      "msg": "Really like the parking space in front.",
      "sended": true,
    });
    chatList.add({
      "msg": "Hey! I really appreciate your choice of home.",
      "sended": false,
      "time":"11:58am",
    });
    chatList.add({
      "msg": "Really like the parking space in front.",
      "sended": true,
    });
    chatList.add({
      "msg": "Hey! I really appreciate your choice of home.",
      "sended": false,
      "time":"11:58am",
    });
    chatList.add({
      "msg": "Really like the parking space in front.",
      "sended": true,
    });
    chatList.add({
      "msg": "Hey! I really appreciate your choice of home.",
      "sended": false,
      "time":"11:58am",
    });
  }
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
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/img/Avatar.jpg"),
            ),
            SizedBox(
              width: 15,
            ),
            Text("Bhautik"),
          ],
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.keyboard_arrow_down_outlined),
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.more_vert),
            ),
          )
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: chatList.length,
                  itemBuilder: (context, index) {
                    return chatList[index]['sended'] == true
                        ? Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width:206,
                          margin: EdgeInsets.symmetric(horizontal:15,vertical: 10),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7),
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
                              Text(chatList[index]["msg"],style: TextStyle(color: Colors.grey),),
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child: Icon(Icons.check_circle_rounded,color: Colors.grey,size:12,))
                            ],
                          ),
                        ),
                      ],
                    )
                        : Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 206,
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.indigoAccent,
                            borderRadius: BorderRadius.circular(7),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(chatList[index]["msg"],style: TextStyle(color: Colors.white),),
                              SizedBox(height: 3,),
                              Text(chatList[index]["time"],style: TextStyle(fontSize: 10,color: Colors.white),)
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 12,
                    );
                  },
                ),
                SizedBox(height: 60,)
              ],
            )
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Write your message",
                    border: InputBorder.none,
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Icon(Icons.add_circle,color: Colors.grey,),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Icon(Icons.mood,color: Colors.grey,),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Icon(
                              Icons.send,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

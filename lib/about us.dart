import 'package:flutter/material.dart';
import 'package:propertyhub/store.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            height: 300,
            child: Stack(
              children: [
                Image.asset(
                  "assets/img/home.jfif",
                  height: 250,
                  fit: BoxFit.fitHeight,
                ),
                Container(
                  height: 250,
                  color: Colors.black.withOpacity(0.4),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15, vertical: 30),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                        ),
                        onPressed: () {
                        Navigator.pop(context);
                        },
                      ),
                      const SizedBox(width: 12,),
                      const Text("About us",style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                const Center(
                    child: Text(
                  "Property",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: const EdgeInsets.only(top: 215, right: 16),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
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
                      child: InkWell(
                        child: const Icon(
                          Icons.perm_phone_msg,
                          color: Colors.blueAccent,
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("About Property Hub",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
                const SizedBox(height: 25,),
                Text(text4,style: const TextStyle(fontSize: 16,color: Colors.grey),),
              ],
            ),
          )
        ],
      ),
    );
  }
}

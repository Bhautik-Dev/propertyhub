import 'package:flutter/material.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              child: Stack(
                children: [
                  Image.asset("assets/img/home.jfif",
                  height: 250,
                  fit: BoxFit.fill,
                  ),

                  Container(
                    color: Colors.black.withOpacity(0.5),
                    //height: 300,
                  ),
                  AppBar(
                    backgroundColor: Colors.transparent,
                    title: const Text("Contact us"),
                  ),
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("PropertHub",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(height: 20,),
                        Text("Have any question or comments?",style: TextStyle(color: Colors.white),),
                        SizedBox(height: 3,),
                        Text("Let us know.",style: TextStyle(color: Colors.white),),
                        SizedBox(height: 3,),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 80),
                child: Column(
                  children: [
                    TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 20),
                        hintText: "Your name",
                        hintStyle: TextStyle(color: Colors.grey[350]),
                        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 20),
                        hintText: "Email or Phone Number",
                          hintStyle: TextStyle(color: Colors.grey[350]),
                        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    TextField(
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top:20,bottom: 90,left: 20),

                        hintText: "Your message",
                        hintStyle: TextStyle(color: Colors.grey[350]),
                        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                    const SizedBox(height: 90,),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 115,vertical:15),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text("Send",style: TextStyle(color: Colors.white),),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

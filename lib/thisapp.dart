import 'package:flutter/material.dart';

class BuyThisApp extends StatefulWidget {
  const BuyThisApp({super.key});

  @override
  State<BuyThisApp> createState() => _BuyThisAppState();
}

class _BuyThisAppState extends State<BuyThisApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
          Container(
            // padding: EdgeInsets.symmetric(horizontal: 30,vertical: 100),
            height: 370,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Colors.green
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,)),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Buy this",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white),),
                        Text("Template Now",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white)),
                        SizedBox(height: 40,),
                        Text("Flutter template only,No backend.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.white)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 30,vertical: 100),
              height:410,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Buy this app with",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.black),),
                          Text("Complete Backend",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.black)),
                          SizedBox(height: 40,),
                          Text("Full app solution with complete Backend.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.green,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/img/whatsapp2.png",height: 40,width: 40,),
            const SizedBox(width: 5,),
            const Text("Message on WhatsApp",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),)
          ],
        ),
      ),

    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propertyhub/home.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:IconButton(icon: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.black,), onPressed: () {
          Navigator.pop(context);
        },),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const Text(
              "Verify Your number",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Enter 4 digit verification code",
              style: TextStyle(color: Colors.grey[350]),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "sent on your number",
              style: TextStyle(color: Colors.grey[350]),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "+91 9876543210",
              style: TextStyle(color: Colors.grey[350]),
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    fullscreenDialog: true,
                    builder: (context) {
                      return const Home();
                    },
                  ),
                );
              },
              child: Container(
                height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "Verify number",
                    style: TextStyle(color: Colors.white),
                  ))),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text("01:05 min left",style: TextStyle(color: Colors.grey[350]),),
                  const Text("Resend",style: TextStyle(fontSize:15,fontWeight: FontWeight.w700 )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

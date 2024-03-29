import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propertyhub/home.dart';
import 'package:propertyhub/loginpage.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading:IconButton(icon: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.black,), onPressed: () {
            Navigator.pop(context);
          },),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Column(
                  children: [
                    const Text(
                      "Forgot Password?",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Enter your email below to receive your",
                        style: TextStyle(color: Colors.grey[350])),
                    const SizedBox(
                      height: 1,
                    ),
                    Text(
                      "password reset instructions.",
                      style: TextStyle(color: Colors.grey[350]),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 25, top: 25),
                        hintText: "Email address",
                        hintStyle: TextStyle(color: Colors.grey[350]),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    const SizedBox(height: 50,),
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
                          width: 500,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: const Center(
                              child: Text(
                            "Send",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ))),
                    ),
                    const SizedBox(height:30),
                    Center(child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LogInPage(),));
                        },
                        child: const Text("Back to login",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17.0,color: Colors.blue),))),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

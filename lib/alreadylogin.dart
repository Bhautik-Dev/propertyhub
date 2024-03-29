import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propertyhub/forgotpassword.dart';
import 'package:propertyhub/otp.dart';

class AlreadyLogin extends StatefulWidget {
  const AlreadyLogin({super.key});

  @override
  State<AlreadyLogin> createState() => _AlreadyLoginState();
}

class _AlreadyLoginState extends State<AlreadyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:IconButton(icon: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.black,), onPressed: () {
          Navigator.pop(context);
        },),
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: Text(
              "Help?",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          SizedBox(
            width: 10,
            height: 10,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              children: [
                Image.asset("assets/img/Login page.jfif", width: 260),
                const SizedBox(
                  height: 10,
                ),
                const Text("Hey Sachin! You're already",
                    textAlign: TextAlign.end, style: TextStyle(fontSize: 20)),
                const Text("registered with us.", style: TextStyle(fontSize: 20)),
                const SizedBox(height: 25),
                Text(
                  "Enter your password to continue",
                  style: TextStyle(fontSize: 17, color: Colors.grey[350]),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 25, top: 30),
                      hintText: "Enter your 6 digit password",
                      hintStyle: TextStyle(color: Colors.grey[350]),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(height: 35),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(
                        fullscreenDialog: true,
                        builder: (context) {
                          return const OTP();
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
                        "Sign in",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ))),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(
                        fullscreenDialog: true,
                        builder: (context) {
                          return const ForgotPassword();
                        },
                      ),
                    );
                  },
                  child: Container(
                      width: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blueAccent),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: const Center(
                          child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      ))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

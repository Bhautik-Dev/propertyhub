import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propertyhub/otp.dart';

class NewUser extends StatefulWidget {
  const NewUser({super.key});

  @override
  State<NewUser> createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.black,), onPressed: () {
          Navigator.pop(context);
        },),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                  child: Text(
                "New on Property Hub?",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              )),
              const SizedBox(height: 10),
              Center(
                  child: Text(
                "Register with us in just few steps",
                style: TextStyle(fontSize: 15, color: Colors.grey[350]),
              )),
              const SizedBox(height: 10),
              const Text(
                "I am",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.person,
                            ),
                            hintText: "Individ...",
                            hintStyle: TextStyle(color: Colors.grey[350]),
                            border: const OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)))),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.home),
                            hintText: "Agent",
                            hintStyle: TextStyle(color: Colors.grey[350]),
                            border: const OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10)))),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Your mobile number",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                    hintText: "+91 9876543210",
                    hintStyle: TextStyle(color: Colors.grey[350]),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(height: 10),
              const Text(
                "Your details",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 22,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                    hintText: "full Name",
                    hintStyle: TextStyle(color: Colors.grey[350]),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                    hintText: "Email address",
                    hintStyle: TextStyle(color: Colors.grey[350]),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey[350]),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
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
                        return const OTP();
                      },
                    ),
                  );
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    child: const Center(
                        child: Text(
                      "Register",
                      style: TextStyle(color: Colors.white),
                    ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

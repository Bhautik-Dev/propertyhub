import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propertyhub/alreadylogin.dart';
import 'package:propertyhub/new user.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.black,), onPressed: () {
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
                const Text("Enter your phone number to ",
                    style: TextStyle(fontSize: 20)),
                const Text("showcase of properties.",
                    textAlign: TextAlign.end, style: TextStyle(fontSize: 20)),
                const SizedBox(height: 25),
                Text(
                  "it will take less than a minute",
                  style: TextStyle(fontSize: 17, color: Colors.grey[350]),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 25, top: 30),
                      hintText: "Your Phone Number",
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
                          return const AlreadyLogin();
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
                        "Next",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ))),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NewUser(),
                        ));
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
                        "New user?",
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

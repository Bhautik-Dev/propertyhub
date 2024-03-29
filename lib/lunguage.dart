import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propertyhub/loginpage.dart';

class Lunguage extends StatefulWidget {
  const Lunguage({super.key});

  @override
  State<Lunguage> createState() => _LunguageState();
}

class _LunguageState extends State<Lunguage> {
  String gValue = "English";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(40.0),
              child: Center(
                  child: Text(
                "CHANGE LANGUAGE",
                style: TextStyle(fontSize: 20),
              )),
            ),
            const SizedBox(
              height: 3,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Select Your Language",
                  style: TextStyle(color: Colors.black12),
                ),
              ],
            ),
            RadioListTile(
              value: "English",
              groupValue: gValue,
              onChanged: (val) {
                gValue = val!;
                setState(() {});
              },
              title: const Text("English"),
            ),
            RadioListTile(
              value: "Arabic",
              groupValue: gValue,
              onChanged: (val) {
                gValue = val!;
                setState(() {});
              },
              title: const Text("Arabic"),
            ),
            RadioListTile(
              value: "French",
              groupValue: gValue,
              onChanged: (val) {
                gValue = val!;
                setState(() {});
              },
              title: const Text("French"),
            ),
            RadioListTile(
              value: "Portuguese",
              groupValue: gValue,
              onChanged: (val) {
                gValue = val!;
                setState(() {});
              },
              title: const Text("Portuguese"),
            ),
            RadioListTile(
              value: "Indonesian",
              groupValue: gValue,
              onChanged: (val) {
                gValue = val!;
                setState(() {});
              },
              title: const Text("Indonesian"),
            ),
            RadioListTile(
              value: "Russian",
              groupValue: gValue,
              onChanged: (val) {
                gValue = val!;
                setState(() {});
              },
              title: const Text("Russian"),
            ),
            RadioListTile(
              value: "Spanish",
              groupValue: gValue,
              onChanged: (val) {
                gValue = val!;
                setState(() {});
              },
              title: const Text("Spanish"),
            ),
            RadioListTile(
              value: "Turkish",
              groupValue: gValue,
              onChanged: (val) {
                gValue = val!;
                setState(() {});
              },
              title: const Text("Turkish"),
            ),
            RadioListTile(
              value: "German",
              groupValue: gValue,
              onChanged: (val) {
                gValue = val!;
                setState(() {});
              },
              title: const Text("German"),
            ),
            RadioListTile(
              value: "Japanese",
              groupValue: gValue,
              onChanged: (val) {
                gValue = val!;
                setState(() {});
              },
              title: const Text("Japanese"),
            ),
            RadioListTile(
              value: "Greek",
              groupValue: gValue,
              onChanged: (val) {
                gValue = val!;
                setState(() {});
              },
              title: const Text("Greek"),
            ),
            RadioListTile(
              value: "Dutch",
              groupValue: gValue,
              onChanged: (val) {
                gValue = val!;
                setState(() {});
              },
              title: const Text("Dutch"),
            ),
            RadioListTile(
              value: "Korean",
              groupValue: gValue,
              onChanged: (val) {
                gValue = val!;
                setState(() {});
              },
              title: const Text("Korean"),
            ),
            RadioListTile(
              value: "Italian",
              groupValue: gValue,
              onChanged: (val) {
                gValue = val!;
                setState(() {});
              },
              title: const Text("Italian"),
            ),
            RadioListTile(
              value: "Swahili",
              groupValue: gValue,
              onChanged: (val) {
                gValue = val!;
                setState(() {});
              },
              title: const Text("Swahili"),
            ),
            const SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          // Navigator.pop(context);
          Navigator.of(context).push(
            CupertinoPageRoute(
              fullscreenDialog: true,
              builder: (context) {
                return const LogInPage();
              },
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8)),
          height: 50,
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(15),
          width: double.maxFinite,
          child: const Center(
              child: Text(
            "Save",
            style: TextStyle(color: Colors.white),
          )),
        ),
      ),
    );
  }
}

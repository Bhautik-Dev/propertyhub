import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool light0 = false;
  bool light1 = false;
  bool light2 = false;
  String gValue = "Daily";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        elevation: 0,
        title: const Text("Settings"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              children: [
                Text(
                  "Manage Notification",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Row(
              children: [
                const Text(
                  "For Matched Properties",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                const Spacer(),
                Switch(
                  value: light0,
                  onChanged: (bool value) {
                    setState(() {
                      light0 = value;
                    });
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Row(
              children: [
                const Text(
                  "For New Launched Projects",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                const Spacer(),
                Switch(
                  value: light1,
                  onChanged: (bool value) {
                    setState(() {
                      light1 = value;
                    });
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Row(
              children: [
                const Text(
                  "Latest Property News",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                const Spacer(),
                Switch(
                  value: light2,
                  onChanged: (bool value) {
                    setState(() {
                      light2 = value;
                    });
                  },
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              children: [
                Text(
                  "Frequency of Notification",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                    child: Text(
                  "Daily",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )),
                Radio(
                  value: "Daily",
                  groupValue: gValue,
                  onChanged: (val) {
                    gValue = val!;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Row(
              children: [
                const Expanded(
                    child: Text(
                  "Alternate Day",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )),
                Radio(
                  value: "Alternate Day",
                  groupValue: gValue,
                  onChanged: (val) {
                    gValue = val!;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Row(
              children: [
                const Expanded(
                    child: Text(
                  "Weekly",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )),
                Radio(
                  value: "Weekly",
                  groupValue: gValue,
                  onChanged: (val) {
                    gValue = val!;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

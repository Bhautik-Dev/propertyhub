import 'package:flutter/material.dart';
import 'package:propertyhub/store.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black54,
        title: const Text("Terms & conditions"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Condition of use",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                text,
                style: const TextStyle(color: Colors.black26, fontSize: 15),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Privacy",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                text2,
                style: const TextStyle(color: Colors.black26, fontSize: 15),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Terms of documents",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                text2,
                style: const TextStyle(color: Colors.black26, fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

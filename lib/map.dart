import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propertyhub/sale.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).push(
              CupertinoPageRoute(
                fullscreenDialog: true,
                builder: (context) {
                  return const SalePage();
                },
              ),
            );
          },
        ),
        title: const Text(
          "Add Location",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          TextButton(

            child: const Text(
              "Reset",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ), onPressed: () {

          },
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "Search Location",
                  hintStyle: TextStyle(color: Colors.grey[350], fontSize: 20),
                  suffixIcon: const Icon(Icons.my_location)),
            ),
            const SizedBox(height: 50,),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text("Popular Locations",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            const SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: Container(

                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black12)
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Wroli",style: TextStyle(color: Colors.white),),
                        Icon(Icons.done,color: Colors.white,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: Container(

                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black12)
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Bandra",style: TextStyle(color: Colors.black12),),
                        Icon(Icons.done,color: Colors.black12,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black12)
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Andheri",style: TextStyle(color: Colors.white),),
                        Icon(Icons.done,color: Colors.white,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: Container(

                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black12)
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Boriwali",style: TextStyle(color: Colors.black12),),
                        Icon(Icons.done,color: Colors.black12,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black12)
                    ),
                    child: const Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Jogeshwari",style: TextStyle(color: Colors.black12),),
                        Icon(Icons.done,color: Colors.black12,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: Container(

                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black12)
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Juhu",style: TextStyle(color: Colors.white),),
                        Icon(Icons.done,color: Colors.white,),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }


}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propertyhub/sale.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  RangeValues _rangeSliderDiscreteValues = const RangeValues(20,40);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
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
          "Filters",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          TextButton(

            child:  const Text(
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
      body: SingleChildScrollView(
        child: Padding(
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
                  child: Text("Property Type",
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
              const SizedBox(height: 20,),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Apartment & Unit",
                      hintStyle: TextStyle(color: Colors.black12),
                  suffixIcon: Icon(Icons.arrow_drop_down),
                ),
              ),
              const SizedBox(height: 40,),
              const Text("Budget",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              const SizedBox(
                height: 25,
              ),
              RangeSlider(
                values: _rangeSliderDiscreteValues,
                min: 0,
                max: 1000000,
                divisions: 20,
                labels: RangeLabels(
                  "\$ "+_rangeSliderDiscreteValues.start.round().toString(),
                  "\$ "+_rangeSliderDiscreteValues.end.round().toString(),
                ),
                onChanged: (values) {
                  setState(() {
                    _rangeSliderDiscreteValues = values;
                  });
                },
              ),
              const SizedBox(height: 40,),
              const Text("Bedrooms",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  const Text("Min"),
                  const SizedBox(width: 10,),
                  DropdownButton<String>(
                    items: <String>['1', '2', '3', '4'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Center(child: Text(value)),
                        ),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                  const Spacer(),
                  const Text("Max"),
                  const SizedBox(width: 10,),
                  DropdownButton<String>(
                    items: <String>['1', '2', '3', '4'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Center(child: Text(value)),
                        ),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10)
          ),
            margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 93.5,vertical: 16),
            child: const Text("Find 300+ Properties",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),)),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_task11/widgets/radio_button.dart';
import 'package:flutter_application_task11/widgets/checkbox.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime chickInDate = DateTime.now();
  DateTime chickOutDate = DateTime.now();
  double adultValue =1.0;
  double childValue =0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Android ATC Hotel',
              style: TextStyle(fontSize: 15, color: Colors.white)),
          backgroundColor: Colors.orange,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image(
                    alignment: Alignment.topCenter,
                    width: 200,
                    image: AssetImage('hotel.jpg')),
                Row(
                  children: [
                    Text('Check-in Date:  ',
                        style: TextStyle(
                            fontSize: 15, color: Colors.orangeAccent)),
                    Text(
                        '${chickInDate.year} - ${chickInDate.month} - ${chickInDate.day}',
                        style:
                            TextStyle(fontSize: 10, color: Colors.lightBlue)),
                    IconButton(
                        onPressed: () async {
                          // var date = DateTime.now().add(Duration(days: 90));
                          var checkInResult = await showDatePicker(
                              context: context,
                              firstDate: DateTime(2023),
                              lastDate: DateTime(2025));
                          if (checkInResult != null) {
                            chickInDate = checkInResult;
                          }
                          setState(() {});
                        },
                        icon: Icon(Icons.calendar_month)),
                  ],
                ),
                Row(
                  children: [
                    Text('Check-out Date:  ',
                        style: TextStyle(
                            fontSize: 15, color: Colors.orangeAccent)),
                    Text(
                        '${chickOutDate.year} - ${chickOutDate.month} - ${chickOutDate.day}',
                        style:
                            TextStyle(fontSize: 10, color: Colors.lightBlue)),
                    IconButton(
                        onPressed: () async {
                          var date = DateTime.now().add(Duration(days: 90));
                          var checkOutResult = await showDatePicker(
                              context: context,
                              firstDate: DateTime(2023),
                              lastDate: DateTime(2025));
                          if (checkOutResult != null) {
                            chickOutDate = checkOutResult;
                          }
                          setState(() {});
                        },
                        icon: Icon(Icons.calendar_month)),
                  ],
                ),
                Row(children: [Text('Adults:  $adultValue', style: 
                TextStyle(color: Colors.orange),),
                Slider(value: adultValue,
                onChanged: (value) {
                  setState(() {
                    adultValue = value;
                  });
                }, 
                min: 1, max: 6, divisions: 5, label: '$adultValue',),
                ] ),
                 Row(children: [Text('Children:  $childValue', style: 
                TextStyle(color: Colors.orange),),
                Slider(value: childValue,
                onChanged: (value) {
                  setState(() {
                    childValue = value;
                  });
                }, 
                min: 0, max: 6, divisions: 6, label: '$childValue',),
                ] ),
                HotelCheckBox(),
                RadioButton(),
              ],
            ),
          ),
        ));
  }
}

import 'package:flut_grouped_buttons/flut_grouped_buttons.dart';
import 'package:flutter/material.dart';

class HotelCheckBox extends StatefulWidget {
  const HotelCheckBox({super.key});
  @override
  State<HotelCheckBox> createState() => _HotelCheckBoxState();
}

class _HotelCheckBoxState extends State<HotelCheckBox>{
  
  var isCityView = false;

  @override
  Widget build(BuildContext context){
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      FlutGroupedButtons<String>(
        titleCheckSpace: 10,
        data: [
        "Breakfast (10 USD/Day)",
        "Internet WiFi (5 USD/Day)",
        "Parking (5 USD/Day)",
        "Swimming Pool (10 USD/Day)",],
         onChanged: (value){
          print(value);
         } ,)
         ]);
  }
}
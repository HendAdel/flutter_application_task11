// import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});
  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton>{
  
  var isCityView = false;

  @override
  Widget build(BuildContext context){
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text('View: '),
      Row(
        children: [
          Checkbox(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50))),
           
           value: isCityView, onChanged: (value){
            isCityView = !isCityView; 
            setState(() {
              
            });
          }),
      Text('City View')  ],
      ),
      ],
    );
  }
}
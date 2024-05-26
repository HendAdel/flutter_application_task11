  import 'package:flutter/material.dart';
  import 'package:flutter_application_task11/widgets/radio_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Android ATC Hotel'), backgroundColor: Colors.orange,),
      body: RadioButton(),
      );
  }
}
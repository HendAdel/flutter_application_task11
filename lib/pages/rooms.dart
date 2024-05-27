  import 'package:flutter/material.dart';
  
class RoomsPage extends StatefulWidget {
  const RoomsPage({super.key});
  @override
  State<RoomsPage> createState() => _RoomsPageState();
}

class _RoomsPageState extends State<RoomsPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Rooms List', 
      style: TextStyle(fontSize: 25, color: Colors.white)),
       backgroundColor: Colors.orange,),
      body: Text('Rooms list'),
      );
  }
}
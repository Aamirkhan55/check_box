import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _selectedBox = false;
  bool _selectedBox1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CheckBox'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Checkbox(
              checkColor: Colors.amber,
              activeColor: Colors.grey,
              value: _selectedBox , 
              onChanged: (box) {
                setState(() {
                    _selectedBox = box!;
                });
              }
              ),
            title: const Text('Flutter Development'),  
          ),
         ListTile(
            leading: Checkbox(
              value: _selectedBox1 , 
              onChanged: (box) {
                setState(() {
                    _selectedBox1 = box!;
                });
              
              }
              ),
            title: const Text('React Development'),  
          ),
          ListTile(
            leading: Checkbox(
              value: _selectedBox , 
              onChanged: (box) {
               setState(() {
                    _selectedBox = box!;
                });
              }
              ),
            title: const Text('Web Development'),  
          ), 
        ],
      ),
    );
  }
}
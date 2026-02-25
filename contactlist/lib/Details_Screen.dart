import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget{
  final String name;
  final String phone;
  final String email;

  DetailsScreen({super.key, required this.name, required this.phone, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Text(
                name[0].toUpperCase(),
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Name: $name",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Phone: $phone",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Email: $email",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
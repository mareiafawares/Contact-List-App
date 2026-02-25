import 'package:contactlist/Details_Screen.dart';
import 'package:flutter/material.dart';

class ContactDetailsScreen extends StatelessWidget{
  ContactDetailsScreen({super.key});
  final List< Map<String,String>> contact=[
    {
      "name":"mareia",
      "phone":"0781270733",
      "email":"mareia@gmail.com"
    },
    {
      "name":"Hashem",
      "phone":"0781254765",
      "email":"hashem@gmail.com"
    },
    {
      "name":"Amer",
      "phone":"0781270733",
      "email":"amer@gmail.com"
    },

  ];
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Details"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,

      ),
      body: ListView.builder(
        itemCount: contact.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(contact[index]['name']!),
            subtitle: Text(contact[index]['phone']!),
            onTap:(){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    name: contact[index]['name']!,
                    phone: contact[index]['phone']!,
                    email: contact[index]['email']!,
                  ),
              ),
              );
            },
          );
        },
    ),
    );
  }

}
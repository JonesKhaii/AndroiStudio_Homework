import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Contact {
  final String name;
  final String phoneNumber;
  final String? address;
  final String? imageUrl;

  Contact({
    required this.name,
    required this.phoneNumber,
    this.address,
    this.imageUrl,
  });
}

class MyApp extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(name: "John Doe", phoneNumber: "123456789"),
    Contact(
        name: "Jane Smith",
        phoneNumber: "987654321",
        address: "123 Main Street",
        imageUrl: "https://via.placeholder.com/150"),

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Danh bạ'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: contacts.map((contact) {
              return ContactItem(contact);
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  final Contact contact;

  ContactItem(this.contact);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: contact.imageUrl != null
                  ? NetworkImage(contact.imageUrl!)
                  : null,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  contact.name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  contact.phoneNumber,
                  style: TextStyle(fontSize: 16),
                ),
                if (contact.address != null) ...[
                  SizedBox(height: 4),
                  Text(
                    contact.address!,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Homework'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconWithLabel(
              icon: Icons.phone,
              label: 'Phone',
              color: Colors.blue,
            ),
            IconWithLabel(
              icon: Icons.router,
              label: 'Route',
              color: Colors.blue,
              ),
              IconWithLabel(
              icon: Icons.share,
              label: 'Share',
              color: Colors.blue,
            ),
          ],
        ),
      ),
    ),
      debugShowCheckedModeBanner:false,
  ));
}

class IconWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const IconWithLabel({
    Key? key,
    required this.icon,
    required this.label,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 50,
          color: color,
        ),
        SizedBox(height: 10),
        Text(
          label,
          style: TextStyle(fontSize: 18, color: color),
        ),
      ],
    );
  }
}

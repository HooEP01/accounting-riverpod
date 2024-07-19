import 'package:accounting/view/home.skeleton.dart';
import 'package:flutter/material.dart';

class HomeErrorPage extends StatefulWidget {
  const HomeErrorPage({super.key});

  @override
  State<HomeErrorPage> createState() => _HomeErrorPageState();
}

class _HomeErrorPageState extends State<HomeErrorPage> {
  @override
  Widget build(BuildContext context) {
    return const HomeSkeletonPage(
      child: Card(
        color: Color.fromARGB(198, 255, 170, 178), // Light red color
        margin: EdgeInsets.all(16), // Add some margin around the card
        child: Padding(
          padding: EdgeInsets.all(32), // Add some padding inside the card
          child: Column(
            mainAxisSize: MainAxisSize.min, // Make the column fit its content
            children: <Widget>[
              Icon(
                Icons.error_outline, // Error icon
                color: Colors.red,
                size: 48, // Icon size
              ),
              Text(
                'Something went wrong', // Error message
                style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.w500, // Text size/ Text color
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Please check your network connection and try again later', // Error message
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}

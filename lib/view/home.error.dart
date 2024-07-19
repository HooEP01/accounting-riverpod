import 'package:accounting/provider/contact.provider.dart';
import 'package:accounting/view/home.skeleton.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeErrorPage extends ConsumerStatefulWidget {
  const HomeErrorPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeErrorPageState();
}

class _HomeErrorPageState extends ConsumerState<HomeErrorPage> {
  @override
  Widget build(BuildContext context) {
    return HomeSkeletonPage(
      child: Card(
        color: const Color.fromARGB(198, 255, 170, 178), // Light red color
        margin: const EdgeInsets.all(16), // Add some margin around the card
        child: Padding(
          padding: const EdgeInsets.all(32), // Add some padding inside the card
          child: Column(
            mainAxisSize: MainAxisSize.min, // Make the column fit its content
            children: <Widget>[
              const Icon(
                Icons.error_outline, // Error icon
                color: Colors.red,
                size: 48, // Icon size
              ),
              const Text(
                'Something went wrong', // Error message
                style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.w500, // Text size/ Text color
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Please check your network connection and try again later', // Error message
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {
                  if (kDebugMode) {
                    print("Success");
                  }
                  ref.read(contactListProvider.notifier).fetchContact();
                  // ref.read(contactProvider);
                },
                child: const Text('Press success'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

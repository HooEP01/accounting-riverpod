import 'package:flutter/material.dart';

class HomeSkeletonPage extends StatefulWidget {
  const HomeSkeletonPage({super.key, this.child});
  final Widget? child;

  @override
  State<HomeSkeletonPage> createState() => _HomeSkeletonPageState();
}

class _HomeSkeletonPageState extends State<HomeSkeletonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildLoadOrErrorWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildLoadOrErrorWidget() => widget.child ?? const CircularProgressIndicator();
}

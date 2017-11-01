import 'package:flutter/material.dart';
import 'package:progress_bars/indeterminate_multicolor_progress_indicator.dart';

class ProgressIndicatorDemo extends StatefulWidget {
  @override
  _ProgressIndicatorDemoState createState() =>
      new _ProgressIndicatorDemoState();
}

class _ProgressIndicatorDemoState extends State<ProgressIndicatorDemo>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..forward();
  }

  @override
  void dispose() {
    _controller.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          appBar: new AppBar(title: const Text('Progress indicators')),
          body: new Center(
              child: new IndeterminateMulticolorProgressIndicator(
                  colors: const [
                Colors.green,
                Colors.yellow,
                Colors.red,
                Colors.blue
              ]))),
    );
  }
}

main() {
  runApp(new ProgressIndicatorDemo());
}

import 'package:flutter/material.dart';

class SlideInContainer extends StatefulWidget {

  final Widget widget;

  SlideInContainer({Key key, this.widget}) : super(key: key);

  @override
  _SlideInContainerState createState() => _SlideInContainerState(container: this.widget);
}

class _SlideInContainerState extends State<SlideInContainer> with SingleTickerProviderStateMixin{

  AnimationController _controller;
  final Widget container;
  Animation<Offset> _offsetAnimation;

  _SlideInContainerState({this.container});

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..forward();

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(-1.5, 0.0),
      end: const Offset(0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: this.container,
      ),
    );
  }
}

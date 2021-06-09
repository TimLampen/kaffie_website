import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StayInTouch extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 75),
      alignment: Alignment.center,
      color: Color.fromRGBO(235, 227, 219, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.email_outlined,
            size: 196,
          ),
          Text("Stay in touch", style: Theme.of(context).textTheme.headline1),
          SizedBox(height: 10),
          Text("Sign up below to stay updated on information surrounding Kaffie’s release.", style: Theme.of(context).textTheme.headline2)

        ],
      ),
    );
  }


}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class TimeComparison extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          TimeCard(
            title: "Kaffie",
            subtitle: "The fastest machine in the industry.",
            seconds: 10,
            isKaffie: true,
          ),
          TimeCard(
            title: "Leading pod-type machine",
            subtitle: "4x slower.",
            seconds: 40,
          ),
          TimeCard(
            title: "Drip-type coffee machine",
            subtitle: "10x slower.",
            seconds: 160,
          ),
          TimeCard(
            title: "Built-in coffee machine",
            subtitle: "22x slower.",
            seconds: 225,
          ),

        ]
      ),
    );
  }

}

class TimeCard extends StatelessWidget {

  final String title, subtitle;
  final int seconds;
  final bool isKaffie;
  TimeCard({Key key, this.title, this.subtitle, this.seconds, this.isKaffie = false}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      child: Card(
        color: this.isKaffie ?  Theme.of(context).accentColor : Theme.of(context).highlightColor,
        child: ListTile(
          leading: Icon(FontAwesome5.clock),
          trailing: Text("${this.seconds}s"),
          title: Text(this.title, style: this.isKaffie ? Theme.of(context).textTheme.headline2 : Theme.of(context).textTheme.headline2.copyWith(color: Colors.black54)),
          subtitle: Text(this.isKaffie ?  this.subtitle : "${this.subtitle}", style: this.isKaffie ? Theme.of(context).textTheme.headline3 : Theme.of(context).textTheme.headline3.copyWith(color: Colors.black54)),
        ),
      ),
    );
  }

}

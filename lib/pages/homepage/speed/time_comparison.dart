import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:kaffie_website/theme/size_config.dart';

class TimeComparison extends StatelessWidget {

  final bool isLaptop;
  TimeComparison({Key key, this.isLaptop = false}) : super(key: key);


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
  final bool isLaptop;
  TimeCard({Key key, this.title, this.subtitle, this.seconds, this.isLaptop = false, this.isKaffie = false}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
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

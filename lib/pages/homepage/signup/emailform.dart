import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaffie_website/theme/size_config.dart';
import 'package:firebase/firebase.dart';

class DesktopEmailForm extends StatefulWidget {
  @override
  _DesktopEmailFormState createState() => _DesktopEmailFormState();
}

class _DesktopEmailFormState extends State<DesktopEmailForm> {

  final _formKey = GlobalKey<FormState>();
  final emailHolder = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: SizeConfig.scaleH*10,
            width: SizeConfig.scaleW*25,
            child: TextFormField(
              controller: emailHolder,
              validator: (value) {
                if(value == null || value.isEmpty)
                  return "Please enter your email address";
                else if(!value.contains("@") || !value.contains("."))
                  return "Please enter a valid email address";
                return null;
              },
              style: Theme.of(context).textTheme.headline3,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white
                    )
                ),
                labelStyle: TextStyle(color: Colors.black),
                fillColor: Colors.white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    )
                ),
                labelText: "Email address",
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: SizeConfig.scaleW*2, top: 0),
              height: SizeConfig.scaleH*5.5,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Theme.of(context).accentColor)
                ),
                child: Container(
                    padding: EdgeInsets.only(left: SizeConfig.scaleW*1, right: SizeConfig.scaleW*1),
                    child: Text("Get Notified", style: Theme.of(context).textTheme.headline3.copyWith(fontWeight: FontWeight.bold))),
                onPressed: () {
                  if(_formKey.currentState.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.green,content: Text("Success! You have been added to the email list.")));

                    Database db = database();
                    DatabaseReference ref = db.ref('emails');
                    ref.push(emailHolder.text);

                    emailHolder.clear();
                  }
                },
              )
          )
        ],
      )
    );
  }
}

class LaptopEmailForm extends StatefulWidget {
  @override
  _LaptopEmailFormState createState() => _LaptopEmailFormState();
}

class _LaptopEmailFormState extends State<LaptopEmailForm> {

  final _formKey = GlobalKey<FormState>();
  final emailHolder = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child:  Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: SizeConfig.scaleH*10,
              width: SizeConfig.scaleW*40,
              child: TextFormField(
                controller: emailHolder,
                validator: (value) {
                  if(value == null || value.isEmpty)
                    return "Please enter your email address";
                  else if(!value.contains("@") || !value.contains("."))
                    return "Please enter a valid email address";
                  return null;
                },
                style: Theme.of(context).textTheme.headline3,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white
                      )
                  ),
                  labelStyle: TextStyle(color: Colors.black),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      )
                  ),
                  labelText: "Email address",
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: SizeConfig.scaleW*2, top: 2),
                height: SizeConfig.scaleH*5.5,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Theme.of(context).accentColor)
                  ),
                  child: Container(
                      padding: EdgeInsets.only(left: SizeConfig.scaleW*1, right: SizeConfig.scaleW*1),
                      child: Text("Get Notified", style: Theme.of(context).textTheme.headline3.copyWith(fontWeight: FontWeight.bold))),
                  onPressed: () {
                    if(_formKey.currentState.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.green,content: Text("Success! You have been added to the email list.")));

                      Database db = database();
                      DatabaseReference ref = db.ref('emails');
                      ref.push(emailHolder.text);

                      emailHolder.clear();
                    }
                  },
                )
            )
          ],
        )
    );
  }
}

class MobileEmailForm extends StatefulWidget {
  @override
  _MobileEmailFormState createState() => _MobileEmailFormState();
}
class _MobileEmailFormState extends State<MobileEmailForm> {

  final _formKey = GlobalKey<FormState>();
  final emailHolder = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              width: SizeConfig.scaleW*60,
              child: TextFormField(
                controller: emailHolder,
                validator: (value) {
                  if(value == null || value.isEmpty)
                    return "Please enter your email address";
                  else if(!value.contains("@") || !value.contains("."))
                    return "Please enter a valid email address";
                  return null;
                },
                style: Theme.of(context).accentTextTheme.headline2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white
                      )
                  ),
                  labelStyle: TextStyle(color: Colors.black),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      )
                  ),
                  labelText: "Email address",
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Theme.of(context).accentColor),
                  padding: MaterialStateProperty.all(EdgeInsets.all(SizeConfig.scaleW*5))
              ),
              child: Container(
                alignment: Alignment.center ,
                height: 20,
                width: 260,
                  padding: EdgeInsets.only(left: SizeConfig.scaleW*1, right: SizeConfig.scaleW*1),
                  child: Text("Get Notified", style: Theme.of(context).accentTextTheme.headline2.copyWith(fontWeight: FontWeight.bold))),
              onPressed: () {
                if(_formKey.currentState.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.green,content: Text("Success! You have been added to the email list.")));

                  Database db = database();
                  DatabaseReference ref = db.ref('emails');
                  ref.push(emailHolder.text);

                  emailHolder.clear();
                }
              },
            )
          ],
        )
    );
  }
}

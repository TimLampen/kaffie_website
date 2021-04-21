import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaffie_website/theme/size_config.dart';
import 'package:firebase/firebase.dart';

class EmailForm extends StatefulWidget {
  @override
  _EmailFormState createState() => _EmailFormState();
}

class _EmailFormState extends State<EmailForm> {

  final _formKey = GlobalKey<FormState>();
  final emailHolder = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child:  Row(
          children: [
            Container(
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
                margin: EdgeInsets.only(left: SizeConfig.scaleW*2),
                height: SizeConfig.scaleH*6,
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
      ),
    );
  }
}

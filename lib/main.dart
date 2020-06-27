import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:flutter_app2/rowtest.dart';
import 'package:flutter_app2/Registration.dart';
void main() {
  runApp(MyApp());
}

class MyApp  extends StatelessWidget  {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState("Home Page");
}

class _MyHomePageState extends State<HomePage> {

  final _formKey = GlobalKey<FormState>();
  String title;
  String _username;
  String _password;
  _MyHomePageState(String title) {
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {



    return Form(

      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2016/11/30/18/14/idea-1873540_960_720.png',
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: username(),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: password(),
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.all(15),
                child: loginButton(),
              ),


            ],
          ),
        ),

      ),
    );
  }

  Widget username (){
    return TextFormField(
    autocorrect: true,
    decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(4)),
    borderSide: BorderSide(width: 1,color: Colors.green),
    ),
    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
    hintText: "Username",
    border: new OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red,width: 2.0),
    borderRadius: BorderRadius.circular(10.0)),
    ),
      validator: (name){
      Pattern pattern =
          r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$';
      RegExp regex = new RegExp(pattern);
      if (!regex.hasMatch(name))
        return 'Invalid username';
      else
        return null;

    },
    onSaved: (uanme)=> _username = uanme,
    );
  }

  Widget  password(){
    return  TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          border: new OutlineInputBorder(
              borderSide: new BorderSide(color: Colors.red)),
          hintText: 'Tell us about yourself',
          helperText: 'Keep it short, & atleast 8 .',
          labelText: 'Password',
          suffixIcon: const Icon(
            Icons.visibility,
            color: Colors.green,
          ),
        ),
    validator: (name){

      if (name.isEmpty || name.length<4)
        return 'Invalid Password';
      else
        return null;

    },
    onSaved: (pass)=> _password = pass,
    );
  }



  Widget loginButton(){
    return   RaisedButton(
        elevation : 10.0,
        splashColor: Colors.yellow,
        color:Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
        onPressed: () {
          if (_formKey.currentState.validate()) {
            _formKey.currentState.save();
            log('date :  Username: $_username\nPassword: $_password');


                 Navigator.push(
                     context, MaterialPageRoute(builder: (context) => rowtest()));

//            Navigator.of(context)
//                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
//              return new rowtest();
//            }));


          }
        },
      child: Text("Login",style: TextStyle(fontSize: 16,color: Colors.white),),
    );
  }
  }







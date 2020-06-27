import 'package:flutter/material.dart';

void main() {
  runApp(rowtest());
}

class rowtest extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MyApp Demo',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Home page'),
              backgroundColor: Colors.amberAccent,
            ),

            body: Column(children: <Widget>[

              Container(
                padding: EdgeInsets.all(20),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.kitchen, color: Colors.green[500]),
                        Text('PREP:'),
                        Text('25 min'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.timer, color: Colors.green[500]),
                        Text('COOK:'),
                        Text('1 hr'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.restaurant, color: Colors.green[500]),
                        Text('FEEDS:'),
                        Text('4-6'),
                      ],
                    ),
                  ],
                ),


              ),

              Container(

                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.kitchen, color: Colors.green[500]),
                        Text('PREP:'),
                        Text('25 min'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.timer, color: Colors.green[500]),
                        Text('COOK:'),
                        Text('1 hr'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.restaurant, color: Colors.green[500]),
                        Text('FEEDS:'),
                        Text('4-6'),
                      ],
                    ),
                  ],
                ),

              ),

              Container(
                color: Colors.black12,
                margin:EdgeInsets.all(40),
                child: TextField(),
              ),
              Container(

                color: Colors.black12,
                margin:EdgeInsets.all(40),

                child: ButtonBar(children: <Widget>[

                  Icon(Icons.local_grocery_store, color: Colors.green[500]),
                  Text('Log')
                ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                margin:EdgeInsets.all(20),
                child: RaisedButton(
                  child: new Text('Hello'),
                  color: Colors.green,
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
              )

            ],

            )

        )
    );
  }
}





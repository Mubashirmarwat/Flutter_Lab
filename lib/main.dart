import 'package:flutter/material.dart';
import './home.dart';

void main() => runApp(MainWidget());


class MainWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Lab',
      home:Scaffold(
        appBar: AppBar(
          title: Text('Home'),

        ),
        body: Center(
            child:SampleWidget()
        ),
      ),
      routes: <String,WidgetBuilder>{
        '/home':(BuildContext context)=>Home(),
      }
    );
  }
}



class SampleWidget extends StatefulWidget{
  @override
  SampleWidgetState createState()=>SampleWidgetState();
}


class SampleWidgetState extends State<SampleWidget>{
  String bodyValue = 'Stateless widget';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Text(bodyValue),
              Container(
      child: RaisedButton(
        child: Text('State Button '),
        onPressed: (){
//          this.setState((){
//            bodyValue = 'Changed';
//          });

        Navigator.of(context).pushNamed('/home');
        },
      ),
    )
      ],
    );

  }
}

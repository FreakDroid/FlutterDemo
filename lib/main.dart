import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  String _value = 'Hello Wrold';
  int _number = 0;

  void _onPressed(){
    setState(() {
      _value = 'My name is Wilfredo';
    });
  }

  void _onPressed2(){
    setState(() {
      _value = DateTime.now().toString();
    });
  }

  void _add(){
    setState(() {
      _number++;
    });
  }

  void _substract(){
    setState(() {
      _number--;
    });
  }

  void _onChange(String value){
    setState(() {
      _value = 'Change: ${value}';
    });
  }

  void _onSubmit(String value){
    setState(() {
      _value = 'Submited: ${value}';
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name Here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(52.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(_value),
              new RaisedButton(onPressed: _onPressed, child: new Text('Click me :)')),
              new RaisedButton(onPressed: _onPressed2, child: new Text('Click me :)')),
              new IconButton(icon: new Icon(Icons.add), onPressed: _add),
              new IconButton(icon: new Icon(Icons.remove), onPressed: _substract),
              new Text(' The value is ${_number}'),
              new TextField(
                decoration: new InputDecoration(
                  labelText: 'Halle',
                  hintText: 'Type something',
                  icon: new Icon(Icons.people)
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
                onChanged: _onChange,
                onSubmitted: _onSubmit,
              )

            ],
          ),
        ),
      ),
    );
  }
}

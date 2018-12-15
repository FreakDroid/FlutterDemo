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

  bool _valueBool = false;
  bool _valueBool2 = false;

  void _onChangeBool1(bool value){
    setState(() {
      _valueBool = value;
    });
  }

  void _onChangeBool2(bool value){
    setState(() {
      _valueBool2 = value;
    });
  }

  int _valueRadio = 0;
  int _valueRadio2 = 0;

  void _setValueRadio(int value){
    setState(() {
      _valueRadio = value;
    });
  }

  void _setValueRadio2(int value){
    setState(() {
      _valueRadio2 = value;
    });
  }

  Widget createRadios(){
    List<Widget> list = [];

    for(int i = 0;i < 3; i++){
      list.add(new Radio(value: i, groupValue: _valueRadio, onChanged: _setValueRadio));
    }

    Column colum = new Column(children: list);
    return colum;
  }

  Widget createRadiosTitle(){
    List<Widget> list = [];

    for(int i = 0;i < 3; i++){
      list.add(new RadioListTile(
          value: i,
          groupValue: _valueRadio,
          onChanged: _setValueRadio,
          activeColor: Colors.green,
          title: new Text('Item ${i}'),
          subtitle: new Text('Item ${i}'),
      ));
    }

    Column colum = new Column(children: list);
    return colum;
  }

  double _myDoubleVar = 0.0;

  void _setValue(double value){
    setState(() {
      _myDoubleVar = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Testing Appbar'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.add), onPressed: _add),
          new IconButton(icon: new Icon(Icons.remove), onPressed: _substract)
        ],
      ),
      body: new Container(
        padding: new EdgeInsets.all(52.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
//              new Text(_value),
//              new RaisedButton(onPressed: _onPressed, child: new Text('Click me :)')),
//              new RaisedButton(onPressed: _onPressed2, child: new Text('Click me :)')),
//              new IconButton(icon: new Icon(Icons.add), onPressed: _add),
//              new IconButton(icon: new Icon(Icons.remove), onPressed: _substract),
//              new Text(' The value is ${_number}'),
//              new TextField(
//                decoration: new InputDecoration(
//                  labelText: 'Halle',
//                  hintText: 'Type something',
//                  icon: new Icon(Icons.people)
//                ),
//                autocorrect: true,
//                autofocus: true,
//                keyboardType: TextInputType.text,
//                onChanged: _onChange,
//                onSubmitted: _onSubmit,
//              ),
//              new Checkbox(value: _valueBool, onChanged: _onChangeBool1),
//              new CheckboxListTile(value: _valueBool2, onChanged: _onChangeBool2,
//                  title: new Text("Hello World"),
//                  controlAffinity: ListTileControlAffinity.leading,
//                  secondary: new Icon(Icons.archive),
//                  activeColor: Colors.red,
//              ),
//              createRadios(),
//              createRadiosTitle()
                new Text("${_number}"),
                new Switch(value: _valueBool, onChanged: _onChangeBool1),
                new SwitchListTile(value: _valueBool2,
                  onChanged: _onChangeBool2,
                  title: new Text(
                    "Hola Mundo",
                    style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                ),
              new Text("${(_myDoubleVar * 100).round()} "),
              new Slider(value: _myDoubleVar, onChanged: _setValue)
            ],
          ),
        ),
      ),
    );
  }
}

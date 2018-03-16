import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  _State createState() => new _State();

}


class _State extends State<MyApp>{
  String  _value = null;
  List<String> _values = new List<String>();


  @override
  void initState() {
    _values.addAll(["Apple","Ball","Cat", "Dog"]);
    _value = _values.elementAt(0);
  }

  void _onChanged(String value){
    setState((){
      _value = value;
    });
  }

  @override

  Widget build(BuildContext context){
    return new  Scaffold(
      appBar: new AppBar(
        title: new Text('Dropdowns / ComboBoxes & Flutter'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
          child: new Column(
          children: <Widget>[
            new DropdownButton(
              value: _value,
                items: _values.map((String value){
                  return new DropdownMenuItem(
                    value: value,
                      child: new Row(
                        children: <Widget>[
                        new Icon(Icons.bookmark),
                        new Text('Item ${value}')
                  ],
                      ),
                  );
                }).toList(),
                onChanged: (String value){_onChanged(value);})
          ],
        ),
      ),

    );
  }

}
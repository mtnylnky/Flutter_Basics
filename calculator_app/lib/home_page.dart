import 'package:flutter/material.dart';


void main()=>runApp(new MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  HomePage({Key key}):super(key:key);
  @override
  _HomePage createState()=>new _HomePage();
}

class _HomePage extends State<HomePage>{

  String result="0";

  String _result="0";
  double num1=0.0;
  double num2=0.0;
  String operand="";

  calcButton(String buttonText){
    if(buttonText=="Ce"){
      _result="0";
      num1=0.0;
      num2=0.0;
      operand="";
    } else if(buttonText=="+"||buttonText=="/"||buttonText=="*"||buttonText=="-"){
      num1=double.parse(result);
      operand=buttonText;
      _result="0";
    } else if(buttonText=="."){
      if(_result.contains(".")){
        print("Deneme");
        return;
      } else{
        _result=_result+buttonText;
      }
    } else if(buttonText=="="){
      num2=double.parse(result);
      if(operand=="+"){
        _result=(num1+num2).toString();
      } else if(operand=="-"){
        _result=(num1-num2).toString();
      }  else if(operand=="/"){
        _result=(num1/num2).toString();
      }  else if(operand=="*"){
        _result=(num1*num2).toString();
      }
      num1=0.0;
      num2=0.0;
      operand="";
    } else {
      _result=_result+buttonText;
    }

    setState((){
      result=double.parse(_result).toStringAsFixed(2);
    });
  }

  @override
  Widget _newbutton(String btnText){
    return new Expanded(
      child: OutlineButton(
        padding: EdgeInsets.all(24.0),
        child: Text(btnText),
        onPressed: ()=>{
          calcButton(btnText)
        },
        color: Colors.blue,
        textColor: Colors.black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: new Column(
          children: <Widget>[
            Container(
                alignment:Alignment.centerRight,
                padding: EdgeInsets.symmetric(
                  vertical: 124.0,
                  horizontal: 12.0
                ),
                child: new Text(
                    result,
                  style: TextStyle(
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
            ),
            new Expanded(
              child: Divider(),
            ),
            new Row(
              children: <Widget>[
                _newbutton("Ce"),
                _newbutton("C"),
                _newbutton("Back"),
                _newbutton("/"),
              ],
            ),
            new Row(
              children: <Widget>[
                _newbutton("7"),
                _newbutton("8"),
                _newbutton("9"),
                _newbutton("*"),
              ],
            ),
            new Row(
              children: <Widget>[
                _newbutton("4"),
                _newbutton("5"),
                _newbutton("6"),
                _newbutton("-"),
              ],
            ),
            new Row(
              children: <Widget>[
                _newbutton("1"),
                _newbutton("2"),
                _newbutton("3"),
                _newbutton("+"),
              ],
            ),
            new Row(
              children: <Widget>[
                _newbutton("0"),
                _newbutton("000"),
                _newbutton("."),
                _newbutton("=")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
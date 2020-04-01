import 'package:flutter/material.dart';
class Teclado1 extends StatelessWidget {
 Function escribir;
 Teclado1(this.escribir);
 
  @override
  
  Widget build(BuildContext context) {
  return  Expanded(
        child: Column(
      children: <Widget>[
        Expanded(
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    color: Color(0xFF0069C0),
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onTap: () {
                    escribir("1");
                  },
                )),
                Expanded(
                    child: GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    color: Color(0xFF0069C0),
                    child: Text(
                      "2",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onTap: () {
                    escribir("2");
                  },
                )),
                Expanded(
                    child: GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    color: Color(0xFF0069C0),
                    child: Text(
                      "3",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onTap: () {
                    escribir("3");
                  },
                ))
                ]),
        ),
         Expanded(
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    color: Color(0xFF0069C0),
                    child: Text(
                      "4",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onTap: () {
                    escribir("4");
                  },
                )),
                Expanded(
                    child: GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    color: Color(0xFF0069C0),
                    child: Text(
                      "5",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onTap: () {
                    escribir("5");
                  },
                )),
                Expanded(
                    child: GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    color: Color(0xFF0069C0),
                    child: Text(
                      "6",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onTap: () {
                    escribir("6");
                  },
                ))
                ]),
        ),
         Expanded(
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    color: Color(0xFF0069C0),
                    child: Text(
                      "7",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onTap: () {
                    escribir("7");
                  },
                )),
                Expanded(
                    child: GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    color: Color(0xFF0069C0),
                    child: Text(
                      "8",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onTap: () {
                    escribir("8");
                  },
                )),
                Expanded(
                    child: GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    color: Color(0xFF0069C0),
                    child: Text(
                      "9",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onTap: () {
                    escribir("9");
                  },
                ))
                ]),
        ),
        Expanded(
          
            child: GestureDetector(
              onTap:(){ escribir("0");} ,
              child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Container(
                  alignment: Alignment.center,
              color: Color(0xFF0069C0),
              child: Text("0", style: TextStyle(color:Colors.white),),
            ))
          ],
        )
 ,
            )       )
      ],
    ));
 
  }
}
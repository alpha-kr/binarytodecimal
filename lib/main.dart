import 'package:flutter/material.dart';
void main()=>runApp( MaterialApp(
  title: "BinarytoDecimal",
  home: Scaffold(
    appBar: AppBar(title: Text("BinarytoDecimal"),),
    body: binarytoDecimal()  ),
  )
  ); 
class binarytoDecimal extends StatefulWidget {
  @override
  _binarytoDecimalState createState() => _binarytoDecimalState();
}

class _binarytoDecimalState extends State<binarytoDecimal> {
   String _binary='0';
    String _decimal='0';
  @override
  Widget build(BuildContext context) {
   
    void addbit({String bit }){
        setState(() {
          if (_binary=='0') {
            _binary=bit;
          }else{
            _binary+=bit;
          }
          int dec=int.parse(_binary,radix: 2);
          _decimal="$dec";
        });


    }
    void clear(){
      setState(() {
        _decimal='0';
      _binary='0';
      });
      
    }
    return  Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Container(alignment: Alignment.topLeft, child: Text("binary->decimal"),),
          Container(alignment: Alignment.topRight, child: Text(_binary ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30 ,color: Color(0xFFFF5722)), ),),
          Container(alignment: Alignment.topRight, child: Text(_decimal, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30 ,color: Color(0xFFFF5722))),),
          Expanded(
            flex: 2,
            child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            
            children: <Widget>[ 

                   Expanded(
                 flex: 3,
                child:GestureDetector(
                  onTap:(){ addbit(bit: '0');},
                  child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
              
                child: Text("0", style: TextStyle(fontSize:30, color: Colors.white ,fontWeight: FontWeight.bold),),
               color: Colors.blueAccent,
                  
              ) 
          ,
               
                ) 
                  
                 ),
              Spacer(),
              Expanded(
                 flex: 3,
                child:GestureDetector(
                  onTap:(){ addbit(bit: '1');},
                  child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
              
                child: Text("1", style: TextStyle(fontSize:30, color: Colors.white ,fontWeight: FontWeight.bold),),
               color: Colors.blueAccent,
                  
              ) 
          ,
               
                ) 
                  
                 )
               
            ],
          )
          ),
          Expanded(
            child: GestureDetector(
              onTap: (){
                clear();
              },
              child: Container(
              
              margin: EdgeInsets.only(top: 10,bottom: 10),
              alignment: Alignment.center,
              color: Color(0xFF0069C0),
               child: Text("CLEAR", style: TextStyle(fontSize:30, color: Colors.white ,fontWeight: FontWeight.bold),),

          ),
            ),
          )

          

        ],

      ),
    );


  }
}
import 'package:binario/teclado1.dart';
import 'package:binario/teclado2.dart';
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
 
  
   String d1='0';
   String d2='0';
   String t="binary->decimal";
   int sw=0;
   Widget teclado;
  
    
    
   
  @override
  Widget build(BuildContext context) {
     
    
    void escribir( String numero){
      setState(() {
         if (sw==0) {
       d1+=numero;
       d2=int.parse(d1,radix: 2).toRadixString(10);
       
     }else{
       d1+=numero;
       d2=int.parse(d1,radix: 10).toRadixString(2);


     }
      });
    
     
   }
    
    void clear(){
      setState(() {
        d1='0';
      d2='0';
      });
      
    }
    void cambio(){

      setState(() {
         d1='0';
      d2='0';
        if (sw==0) {
          t="Decimal->binario";
          sw=1;
          
        }else{
        t="binary->decimal";
          sw=0;
          
        }
      });
    }
    return  Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          GestureDetector(
            child:Container(alignment: Alignment.topLeft, child: Text(t),) ,
            onTap:(){
              cambio();
            } ,
          ),
          
          Container(alignment: Alignment.topRight, child: Text(d1 ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30 ,color: Color(0xFFFF5722)), ),),
          Container(alignment: Alignment.topRight, child: Text(d2, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30 ,color: Color(0xFFFF5722))),),
          sw==0? Teclado2(escribir):Teclado1(escribir),
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
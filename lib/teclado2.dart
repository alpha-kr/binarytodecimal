import 'package:flutter/material.dart';
 class Teclado2 extends StatelessWidget {
   Function escribir;
   Teclado2(this.escribir);
   @override
   Widget build(BuildContext context) {
    return  Expanded(
            flex: 2,
            child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            
            children: <Widget>[ 

                   Expanded(
                 flex: 3,
                child:GestureDetector(
                  onTap:(){ escribir( "0");},
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
                  onTap:(){ escribir("1");},
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
          );
 
  }

 }
   
  
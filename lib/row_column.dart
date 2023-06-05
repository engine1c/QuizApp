import 'package:flutter/material.dart';

class MyRowColumn extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VERSTKA'),
      ),
      body: Container(
      //       margin: const EdgeInsets.all(8),
      //       padding: const EdgeInsets.all(0.0),
      // color: Colors.grey,
       child: Row( 
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
ColorBox(),
BiggerColorBox() ,
ColorBox(),
          ],
        
       ), 
      ),
    );
  }
}

class ColorBox extends StatelessWidget{
  const ColorBox({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      width:  80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.redAccent[100],
        border: Border.all(),
      ),
    );
  }
}

class BiggerColorBox extends StatelessWidget{
  const BiggerColorBox({super.key});


  @override
  Widget build(BuildContext context){
    return Container(
      width:  80,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.redAccent[400],
        border: Border.all(),
      ),
    );
  }
}
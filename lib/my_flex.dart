import 'package:flutter/material.dart';

class MyFlex extends StatelessWidget {
  const MyFlex({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VERSTKA'),
      ),
      body: Container(
      //       margin: const EdgeInsets.all(8),
      //       padding: const EdgeInsets.all(0.0),
       color: Colors.grey,
       child: Column( 
       mainAxisAlignment: MainAxisAlignment.start,
       children: <Widget>[
        Container(
          color: Colors.amber,
          width: 50,
          child: Text('DART',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black26
          ),
          softWrap: false,
          overflow: TextOverflow.fade,
          ),
        ),
        const Icon(
          Icons.favorite,
          size: 50,
          color: Colors.black,
        ),
        Expanded(child: Image.network('https://ichef.bbci.co.uk/onesport/cps/800/cpsprodpb/FBF2/production/_129989446_djokovic.jpg'))
       ],
// BiggerColorBox() ,
// Flexible(fit: FlexFit.loose, flex: 1,
//   child: ColorBox()),
//   // SizedBox(
//   //   width: 40,
//   // ),
//   // SizedBox(
//   //   width: 100,height: 100,child: ColorBox() ),
//   Spacer(
//     flex: 2,
//   ),
// Flexible(fit: FlexFit.loose, flex: 1,
//   child: ColorBox()),
//           ],
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
     //child: Text('asd'), 
    );
  }
}

class BiggerColorBox extends StatelessWidget{
  const BiggerColorBox({super.key});


  @override
  Widget build(BuildContext context){
    return Container(
      width:  200,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.green[500],
        border: Border.all(),
      ),
    );
  }
}
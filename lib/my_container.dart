import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Контейнер'),
      ),
      body: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
           image: Image.network(
            'http://mir-zdravia.com.ua/wa-data/public/shop/products/05/02/205/images/469/469.970.jpg'
           ).image ,
           fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20)
        ),
      //   //alignment: Alignment.center,
      //   color: Colors.blueGrey,
      //   padding: EdgeInsets.all(10),
      //   margin: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
      //   child: Text('test',textAlign: TextAlign.center,),
      ),
    );
  }
}
// @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Контейнер'),
//       ),
//       body: Center(
//         child: Container(
         
//           decoration: BoxDecoration( 
//             color: Colors.amber[600],
//             //shape: BoxShape.circle,
//             border: Border.all(),
            
//             ),
//             alignment: Alignment.center,
//             // width: 200,
//             // height: 150,
//             margin: const EdgeInsets.only(left: 100),
//             padding: const EdgeInsets.all(0.0),
//           child: const Text('__Container_baf_lesson__'),
//         ),
//       ),
//     );
//   }
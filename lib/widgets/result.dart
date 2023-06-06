import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int count;
  final int total;
  final VoidCallback onClearState;

  Result(
      {super.key,
      required this.count,
      required this.total,
      required Function() this.onClearState});

  final mainTextStyle = const TextStyle(
      fontFamily: 'Pacifico',
      color: Colors.yellowAccent, fontSize: 24, fontWeight: FontWeight.normal);

  final resTextStyle = const TextStyle(
      fontFamily: 'TrainOne',
      color: Colors.yellow, fontSize: 20, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    String msg = '';
    Widget img;

    if (0 <= count && count <= 3) {
      msg = 'Савсем не очень!';
      img = Image.asset('assets/images/bad.jpg');
    } else if (4 <= count && count <= 6) {
      msg = 'Так себе...';
      img = Image.asset('assets/images/medium.jpg');
    } else {
      msg = 'Это превосходно!';
      img = Image.asset('assets/images/good.jpg');
    }

    return DefaultTextStyle(
      style: mainTextStyle,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.black,
                blurRadius: 15,
                spreadRadius: 0,
                offset: Offset(2, 5)),
          ],
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF5337ff),
              Color(0xFF8131ff),
              Color(0xFFbd27ff),
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              width: 120,
              height: 120,
              child: FittedBox(
                fit: BoxFit.contain,
                child: img,
              ),
            ),
            SizedBox(
              child: Text(
                msg,
                textAlign: TextAlign.center,
                
              ),
            ),
            const Divider(
              color: Colors.white,
            ),
            Text('$count / $total',
            style: resTextStyle,
            ),
            const Divider(
              color: Colors.white,
            ),
            ElevatedButton(
              onPressed: onClearState,
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(
                  const TextStyle(fontSize: 23),
                ),
              ),
              child: const Text('Пройти еще раз...'),
            ),
          ],
        ),
      ),
    );
  }
}

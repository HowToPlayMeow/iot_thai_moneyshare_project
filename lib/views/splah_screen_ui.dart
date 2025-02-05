import 'package:flutter/material.dart';

class SplahUI extends StatefulWidget {
  const SplahUI({super.key});

  @override
  State<SplahUI> createState() => _SplahUIState();
}

class _SplahUIState extends State<SplahUI> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Moneyinput(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/money.png',
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            Text(
              'แชร์เงินกันเถอะ',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.025,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Crate by Meow',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.025,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

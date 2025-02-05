import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Moneyinput extends StatefulWidget {
  const Moneyinput({super.key});

  @override
  State<Moneyinput> createState() => _MoneyinputState();
}

class _MoneyinputState extends State<Moneyinput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'แชร์เงินกันเถอะ',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Image.asset(
                'assets/images/money.png',
                width: MediaQuery.of(context).size.width * 0.35,
              ),
              SizedBox(
                height: 35.0,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.purple,
                    ),
                  ),
                  prefixIcon: Icon(
                    FontAwesomeIcons.moneyBill1Wave,
                    color: Colors.purple,
                  ),
                  hintText: 'จำนวนเงิน',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.purple,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.purple,
                  ),
                  hintText: 'จำนวนเงิน',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

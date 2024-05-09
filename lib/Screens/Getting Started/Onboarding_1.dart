import 'package:appointment_app/Screens/Getting%20Started/Onboardinf_2.dart';
import 'package:flutter/material.dart';

class BoardingOne extends StatefulWidget {
  const BoardingOne({super.key});

  @override
  State<BoardingOne> createState() => _BoardingOneState();
}

class _BoardingOneState extends State<BoardingOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Container(
              height: 300,
              width: MediaQuery.sizeOf(context).width,
              child: Image.asset('assets/Coin.png'),
            ),
          ),
          SizedBox(height: 80),
          Text(
            'Multiple delivery options',
            style: TextStyle(
                fontFamily: 'Codenext',
                fontWeight: FontWeight.bold,
                color: Color(0xff007B5D),
                fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Enjoy best the market \n exchange rates',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Codenext',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 24),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.only(top: 130),
            child: Container(
              height: 50,
              width: MediaQuery.sizeOf(context).width * 0.8,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff007B5D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    print("The Button is Pressed");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BoardingTwo()));
                  },
                  child: Text(
                    'Get Strated',
                    style: TextStyle(
                      fontFamily: 'Codenext',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BoardingTwo extends StatefulWidget {
  const BoardingTwo({super.key});

  @override
  State<BoardingTwo> createState() => _BoardingTwoState();
}

class _BoardingTwoState extends State<BoardingTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Container(
              height: 300,
              width: MediaQuery.sizeOf(context).width,
              child: Image.asset('assets/plane.png'),
            ),
          ),
          SizedBox(height: 80),
          Text(
            'Multiple delivery options',
            style: TextStyle(
                fontFamily: 'Codenextbold',
                fontWeight: FontWeight.bold,
                color: Color(0xff007B5D),
                fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Mobile money, Bank \n transfer, and cash pick up',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Codenextbold',
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
                    'Next',
                    style: TextStyle(
                      fontFamily: 'Codenextbold',
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
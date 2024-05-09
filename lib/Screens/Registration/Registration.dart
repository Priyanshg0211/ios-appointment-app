import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
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
            padding: EdgeInsets.only(top: 20),
            child: Container(
              height: 300,
              width: MediaQuery.sizeOf(context).width,
              child: Image.asset('assets/message.png'),
            ),
          ),
          SizedBox(height: 80),
          Text(
            'Customer friendly',
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
            'Seamless and transparent \n customer experience at \n every step of transfer',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Codenextbold',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 24),
          ),
          SizedBox(
            height: 60
          ),
 Container(
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
                        MaterialPageRoute(builder: (context) => Registration()));
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontFamily: 'Codenextbold',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )),
            ),
          SizedBox(height: 20,),
          Container(
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
                        MaterialPageRoute(builder: (context) => Registration()));
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontFamily: 'Codenextbold',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )),
            ),
        ],
      ),
    );
  }
}
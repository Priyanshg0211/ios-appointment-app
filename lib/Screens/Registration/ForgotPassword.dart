import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20,top: 30),
              child: Text(
                'Forgot Password ?',
                style: TextStyle(
                  fontFamily: 'Codenextbold',
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Enter Your email address',
                style: TextStyle(
                    fontFamily: 'Codenext', color: Colors.grey, fontSize: 15),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.9,
                child: TextFormField(
                  controller: _emailController,
                  cursorColor: Color(0xff007B5D),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.grey,
                    ),
                    border: InputBorder.none, // Remove underline
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE7EAEB)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE7EAEB)),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!value.contains('@')) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
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
                  },
                  child: Text(
                    'Done',
                    style: TextStyle(
                      fontFamily: 'Codenextbold',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

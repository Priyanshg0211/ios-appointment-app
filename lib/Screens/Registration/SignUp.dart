import 'package:appointment_app/Screens/Registration/SignIn.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Sign Up',
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
                'Your Username',
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
                      Icons.account_circle_rounded,
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
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Your email address',
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
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Password',
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
                  controller: _passwordController,
                  cursorColor: Color(0xff007B5D),
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE7EAEB)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE7EAEB)),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
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
                    'Sign Up',
                    style: TextStyle(
                      fontFamily: 'Codenextbold',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(top: 150,), 
              child: Center(
                child: Text(
                  'Already have an account',
                  style: TextStyle(
                      fontFamily: 'Codenextbold',
                      color: Colors.black,
                      fontSize: 13),
                ),
              ),
            ),
        
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontFamily: 'Codenextbold',
                      color: Color(0xff007B5D),
                      fontSize: 13),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:la_vie/screens/login/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(
          252,
          252,
          245,
          1
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                alignment: Alignment.topRight,
                child: Image.asset(
                    'assets/image/login/login_top_right.png'
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                    'assets/image/login/lavie_login.png'
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: Color(0xFF1ABC00),
                        ),
                      ),
                      onPressed: (){},
                    ),
                    TextButton(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          color: Color(0xFF8A8A8A),
                        ),
                      ),
                      onPressed: (){
                        Navigator.pushReplacement(
                          context ,
                          MaterialPageRoute(
                            builder: (cont)=> LoginScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4),
                            child: Text(
                              'First Name',
                              style: TextStyle(
                                  color: Color(
                                      0xFF6F6F6F
                                  ),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2.0 ,
                                    color: Colors.cyan
                                ),
                                borderRadius: BorderRadius.circular(
                                    5.0
                                ),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4),
                            child: Text(
                              'Last Name',
                              style: TextStyle(
                                  color: Color(
                                      0xFF6F6F6F
                                  ),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2.0 ,
                                    color: Colors.cyan
                                ),
                                borderRadius: BorderRadius.circular(
                                    5.0
                                ),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Text(
                        'Email',
                        style: TextStyle(
                            color: Color(
                                0xFF6F6F6F
                            ),
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2.0 ,
                              color: Colors.cyan
                          ),
                          borderRadius: BorderRadius.circular(
                              5.0
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Text(
                        'Password',
                        style: TextStyle(
                            color: Color(
                                0xFF6F6F6F
                            ),
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2.0 ,
                              color: Colors.cyan
                          ),
                          borderRadius: BorderRadius.circular(
                              5.0
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Text(
                        'Confirm Password',
                        style: TextStyle(
                            color: Color(
                                0xFF6F6F6F
                            ),
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2.0 ,
                              color: Colors.cyan
                          ),
                          borderRadius: BorderRadius.circular(
                              5.0
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 18,
                ),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        5
                    ),
                  ),
                  color: Color(0xFF1ABC00),
                  minWidth: double.infinity,
                  height: 46.24,
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onPressed: (){},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

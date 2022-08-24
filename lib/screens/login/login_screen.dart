import 'package:flutter/material.dart';
import 'package:la_vie/screens/home/home_screen.dart';
import 'package:la_vie/screens/sign_up/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(
          252,
          252,
          245,
          1
      ),
      body: Scaffold(
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
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: Color(0xFF8A8A8A),
                          ),
                        ),
                        onPressed: (){
                          Navigator.pushReplacement(
                            context ,
                            MaterialPageRoute(
                              builder: (cont)=> SignUpScreen(),
                            ),
                          );
                        },
                      ),
                      TextButton(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: Color(0xFF1ABC00),
                          ),
                        ),
                        onPressed: (){},
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
                    vertical: 18,
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
                        keyboardType: TextInputType.visiblePassword,
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
                      'Login',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: (){
                      Navigator.pushReplacement(
                        context ,
                        MaterialPageRoute(
                          builder: (c)=> HomeScreen(),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  child: Row(
                    children: [
                      Container(
                        color: Color(0xFF979797),
                        width: 110,
                        height: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Text(
                          'or continue with',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF979797),
                          ),
                        ),
                      ),
                      Container(
                        color: Color(0xFF979797),
                        width: 110,
                        height: 1,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/image/login/google.png'
                    ),
                    Image.asset(
                      'assets/image/login/facebook.png'
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Image.asset(
                    'assets/image/login/login_bottom_left.png'
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

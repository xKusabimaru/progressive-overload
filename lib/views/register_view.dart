import 'package:flutter/material.dart';
import 'package:progressive_overload/services/auth_service.dart';
import 'package:progressive_overload/wrapper.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double usedHeight = screenHeight - statusBarHeight;
    final double usedWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff0F0F0F), // backgroundColor
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, //the box for all page contents
            children: [
              SizedBox(height: usedHeight / 244),
              // welcom to the user
              Text(
                'Track your progress and reach your fitness goals',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                  fontSize: usedHeight / 50,
                ),
              ),
              SizedBox(height: usedHeight / 50),
              Text(
                'Register now',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: usedHeight / 32, //gg
                ),
              ),
              SizedBox(height: usedHeight / 55),

              // email
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(usedHeight / 70),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                      ),
                      onChanged: (value) {
                        setState(() {
                          email = value;
                        });
                      },
                    ),
                  ),
                ),
              )
              //pass

              ,
              SizedBox(height: usedHeight / 80),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(usedHeight / 70),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'password',
                      ),
                      onChanged: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: usedHeight / 80),

              //sign in button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(usedHeight / 70)),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        if (await AuthService.signUp(email!, password!)) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Wrapper(),
                              ));
                        }
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: usedHeight / 51,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: usedHeight / 75),

              // register
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(
              //       'Not a member ?',
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //     GestureDetector(
              //       onTap: () {
              //         Navigator.pushReplacement(
              //             context,
              //             MaterialPageRoute(
              //               builder: (context) => const RegisterView(),
              //             ));
              //       },
              //       child: Text(
              //         ' Register now',
              //         style: TextStyle(
              //           color: Colors.blue,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //     )
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 0, 140, 255),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Center(
                    child: Image.asset(_ProjectString().imagePath),
                  ),
                  Text(
                    _ProjectString().anaBaslik,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 25,
                      left: 25,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          _ProjectString().logIn,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          _ProjectString().signUp,
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _ProjectString().email,
                          style: TextStyle(
                              color: Color.fromARGB(255, 199, 194, 194)),
                        ),
                        Divider(),
                        Text(
                          _ProjectString().password,
                          style: TextStyle(
                              color: Color.fromARGB(255, 199, 194, 194)),
                        ),
                        Divider(),
                        Center(
                          child: Text(
                            _ProjectString().forgetPassword,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                        ),
                        Container(
                          height: 40,
                          child: Center(
                            child: Text(
                              _ProjectString().loginButton,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          color: Color.fromARGB(255, 0, 140, 255),
                        )
                      ],
                    ))),
            flex: 1,
          )
        ],
      ),
    );
  }
}

class _ProjectString {
  final String anaBaslik = 'TeamTrics';
  final String imagePath = 'assets/png/tac.png';
  final String signUp = 'SIGN UP';
  final String password = 'Password';
  final String email = 'Email';
  final String logIn = 'LOG IN';
  final String forgetPassword = 'Forget Your Password ?';
  final String loginButton = 'LOGIN';
}

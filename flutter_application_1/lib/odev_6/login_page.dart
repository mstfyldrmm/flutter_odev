import 'package:flutter/material.dart';
import 'package:flutter_application_1/odev_6/second_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _key = GlobalKey();
  final myController = TextEditingController();
  final myController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/png/login2.png'), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Form(
            key: _key,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 35, top: 130),
                  child: Text(
                    'Welcome\nBack',
                    style: TextStyle(color: Colors.white, fontSize: 33),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(left: 35, right: 35),
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        _textFormFieldCreator(myController, "Email", false),
                        _textFormFieldCreator(myController2, "Password", true),
                        SizedBox(
                          height: 40,
                        ),
                        _FirstRow(context),
                        SizedBox(
                          height: 40,
                        ),
                        _secondRow()
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }

  TextFormField _textFormFieldCreator(
      var controller, String icerik, bool icerikGizle) {
    return TextFormField(
      autofocus: true,
      controller: controller,
      cursorColor: Colors.black,
      keyboardType: TextInputType.emailAddress,
      cursorHeight: 30,
      obscureText: icerikGizle,
      validator: isNotEmpty,
      decoration: _textformfieldDecorator(icerik),
    );
  }

  Row _secondRow() {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            'Sign Up',
            textAlign: TextAlign.left,
            style: TextStyle(
                decoration: TextDecoration.underline,
                color: Color(0xff4c505b),
                fontSize: 18),
          ),
          style: ButtonStyle(),
        ),
        SizedBox(
          width: 100,
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              'Forgot Password',
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Color(0xff4c505b),
                fontSize: 18,
              ),
            )),
      ],
    );
  }

  Row _FirstRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Sign in',
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
        ),
        CircleAvatar(
          radius: 30,
          backgroundColor: Color.fromARGB(255, 162, 11, 149),
          child: IconButton(
              color: Colors.white,
              onPressed: () {
                if (_key.currentState?.validate() ?? false) {
                  print('okey');
                  Navigator.of(context).push(
                      _createRoute(myController.text, myController2.text));
                }
              },
              icon: Icon(
                Icons.arrow_forward,
              )),
        )
      ],
    );
  }
}

Route _createRoute(String userName, String password) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => SecondSecreen(
      kullaniciAdi: userName,
      sifre: password,
    ),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      final tween = Tween(begin: begin, end: end);
      var curveTween = CurveTween(curve: Curves.easeOutCirc);
      return SlideTransition(
        position: animation.drive(curveTween).drive(tween),
        child: child,
      );
    },
  );
}

InputDecoration _textformfieldDecorator(String icerik) {
  return InputDecoration(
      border: InputBorder.none,
      focusColor: Colors.grey,
      hoverColor: Colors.grey,
      labelText: icerik,
      hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
      hintTextDirection: TextDirection.ltr,
      labelStyle: TextStyle(color: Colors.grey, fontSize: 20),
      contentPadding: EdgeInsets.all(20));
}

String? isNotEmpty(String? data) {
  return (data?.isNotEmpty ?? false) ? null : 'Bu alan bos gecilemez';
}

import 'package:flutter_application_3/SettingPagee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/HomePage.dart';
import 'package:flutter_application_3/routes.dart';



class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _showPass = false;
  TextEditingController _userController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  var _userNameError = "Tên đăng nhập không hợp lệ";
  var _passError = "Mật khẩu không hợp lệ";
  var _userInvalid = false;
  var _passInvalid = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
      constraints: BoxConstraints.expand(),
      color: Colors.white,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 140),
              child: Container(
                  width: 100,
                  height: 100,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xff888888)),
                  child: FlutterLogo()),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 100),
              child: Text(
                "Hello\nWelcome back",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 10, 12, 71),
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: TextField(
                style: TextStyle(fontSize: 24, color: Colors.black),
                controller: _userController,
                decoration: InputDecoration(
                    labelText: "Tên đăng nhập",
                    errorText: _userInvalid ? _userNameError : null,
                    labelStyle:
                        TextStyle(color: Color(0xff888888), fontSize: 25)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: <Widget>[
                  TextField(
                    style: TextStyle(fontSize: 24, color: Colors.black),
                    controller: _passController,
                    obscureText: !_showPass,
                    decoration: InputDecoration(
                        labelText: "Mật khẩu",
                        errorText: _passInvalid ? _passError : null,
                        labelStyle:
                            TextStyle(color: Color(0xff888888), fontSize: 25)),
                  ),
                  GestureDetector(
                    onTap: onToggleShowPass,
                    child: Text(_showPass ? "Ẩn" : "Hiện",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 10, 12, 71),
                          fontWeight: FontWeight.bold,
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 100),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  color: Color.fromARGB(255, 10, 12, 71),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  onPressed: onSignInClicked,
                  child: Text(
                    "Đăng nhập",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Đăng kí",
                      style: TextStyle(fontSize: 20, color: Color(0xff888888)),
                    ),
                    Text(
                      "Quên mật khẩu?",
                      style: TextStyle(fontSize: 20, color: Color(0xff888888)),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  void onToggleShowPass() {
    setState(() {
      _showPass = !_showPass;
    });
  }

  void onSignInClicked() {
    setState(() {
      if (_userController.text.length < 0) {
        _userInvalid = true;
      } else {
        _userInvalid = false;
      }
      if (_passController.text.length < 0) {
        _passInvalid = true;
      } else {
        _passInvalid = false;
      }
      if (!_userInvalid && !_passInvalid) {

        Navigator.push(context,
            new MaterialPageRoute(builder: (context) => HomeScreen()));
        //Navigator.push(
        // context, MaterialPageRoute(builder: (context) => HomePage()));
      }
    });
  }
}

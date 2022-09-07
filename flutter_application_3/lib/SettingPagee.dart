import 'package:flutter/material.dart';
import 'package:flutter_application_3/HomePage.dart';
import 'package:flutter_application_3/LoginPage.dart';

class SettingPage extends StatelessWidget {

 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(  
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
           
          backgroundColor: Color.fromARGB(255, 10, 12, 71),
          title: Center(child: Text('Cài đặt thông số')),
        ),
       body: Center(         
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: Text(
                  'Trạng thái hoạt động',
                  style: TextStyle(
                      fontSize: 25, color: Colors.white),
                ),
                onPressed: () {},
                style: ButtonStyle(
                    shadowColor: MaterialStateProperty.all<Color>(Colors.black),
                    fixedSize: MaterialStateProperty.all<Size>(Size(500, 80)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 14, 21, 59)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ))),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: Text(
                  'Cài đặt thông số',
                  style: TextStyle(
                      fontSize: 25, color: Colors.white),
                ),
                style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all<Color>(Colors.black),
                    fixedSize: MaterialStateProperty.all<Size>(Size(500, 80)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 14, 21, 59)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ))),
                onPressed: () {},
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: Text(
                  'Thông số hoạt động',
                  style: TextStyle(
                      fontSize: 25, color: Colors.white),
                ),
                onPressed: () {},
                style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all<Color>(Colors.black) ,
                    fixedSize: MaterialStateProperty.all<Size>(Size(500, 80)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 14, 21, 59)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ))),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: Text(
                  'Báo cáo',
                  style: TextStyle(
                      fontSize: 25, color: Colors.white),
                ),
                onPressed: () {},
                style: ButtonStyle(
                    shadowColor: MaterialStateProperty.all<Color>(Colors.black) ,
                    fixedSize: MaterialStateProperty.all<Size>(Size(500, 80)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 14, 21, 59)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ))),
              )
            ],
          ),
        )),
      );
  }
}
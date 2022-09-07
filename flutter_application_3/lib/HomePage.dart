import 'package:flutter/material.dart';
import 'package:flutter_application_3/LoginPage.dart';
import 'package:flutter_application_3/SettingPagee.dart';
import 'package:flutter_application_3/routes.dart';



class HomeScreen extends StatelessWidget {
 
  const HomeScreen ({Key? key}) : super(key: key);

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
          title: Center(child: Text('Hệ thống kiểm tra độ bền sản phẩm')),
        ),
       body: Center(     
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
    
                ElevatedButton.icon(
                icon: Icon(Icons.edit, size: 32,),
                label: Text(
                  'Trạng thái hoạt động',
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

              ElevatedButton.icon(
                icon: Icon(Icons.edit, size: 32),
                label: Text(
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

          SizedBox(
               height: 10,
              ),ElevatedButton.icon(
                icon: Icon(Icons.edit, size: 32),
                label: Text(
                  'Thông số hoạt động',
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

              ElevatedButton.icon(
                icon: Icon(Icons.edit, size: 32),
                label: Text(
                  'Báo cáo',
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
            onPressed: () {
             /*  Navigator.of(context).pushNamed(SettingPage.routeName); */
              Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) =>  SettingPage()));
            },
            child: Text('Go to setting page'),
          ), 
            ElevatedButton(
             child: Text('Back To HomeScreen'),
             
              onPressed: () {
                 Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => LoginScreen()));
              }
              
          ) ]
          ),
          ),
        ),
      );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeus/view/menu/menu.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 330.0,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "FullName",
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: Icon(Icons.edit),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 18.0),
            Container(
              width: 330.0,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.edit),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 18.0),
            Container(
              width: 330.0,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.security),
                  suffixIcon: Icon(Icons.edit),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 18.0),
            MaterialButton(
              onPressed: () => Get.to(MenuPage()),
              child: Text("Create Account"),
              textColor: Colors.white,
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'login.dart';
import '../../widget/design/settingColor.dart';
import '../../widget/design/sharedController.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: colorMainBG_greedot,
        body: SignupPage(),
      ),
    );
  }
}

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // TextEditingController _usernameController = TextEditingController();
  // TextEditingController _emailController = TextEditingController();
  // TextEditingController _passwordController = TextEditingController();
  // TextEditingController _confirmPasswordController = TextEditingController();

  void _register() {
    if (passwordController.text == confirmPasswordController.text) {
      // 비밀번호가 일치하면 로그인 화면으로 이동
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => LogIn(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('비밀번호가 일치하지 않습니다'),
          backgroundColor: colorSnackBar_greedot,
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max, // Column의 크기를 최대로 설정
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: '이메일',
                prefixIcon: Icon(Icons.mail_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                    color: colorAppbar_greedot,
                  ),
                ),
                filled: true,
                fillColor: colorFilling_greedot,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: '닉네임',
                prefixIcon: Icon(Icons.person_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                    color: colorAppbar_greedot,
                  ),
                ),
                filled: true,
                fillColor: colorFilling_greedot,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: '비밀번호',
                prefixIcon: Icon(Icons.lock_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                    color: colorAppbar_greedot,
                  ),
                ),
                filled: true,
                fillColor: colorFilling_greedot,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: confirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: '비밀번호 확인',
                prefixIcon: Icon(Icons.repeat),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                    color: colorAppbar_greedot,
                  ),
                ),
                filled: true,
                fillColor: colorFilling_greedot,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: logPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: '대화 로그 확인용 비밀번호',
                prefixIcon: Icon(Icons.child_care),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                    color: colorAppbar_greedot,
                  ),
                ),
                filled: true,
                fillColor: colorFilling_greedot,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _register,
              style: ElevatedButton.styleFrom(
                backgroundColor: colorBut_greedot,
              ),
              child: Text('로그인 화면 이동'),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup_using_getx/controllers/auth_controller.dart';
import 'package:login_signup_using_getx/views/login_page.dart';

class SignUpPage extends GetView<AuthController> {
  SignUpPage({Key? key}) : super(key: key);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUpPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Card(
                  child: TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter UserName',
                      contentPadding: EdgeInsets.only(left: 12.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Card(
                  child: TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      contentPadding: EdgeInsets.only(left: 12.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(onPressed: () {
                controller.register(emailController.text, passwordController.text);
              }, child: Text('SignUp')),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Have an account ?',
                    textScaleFactor: 1.2,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  TextButton(
                      onPressed: () {
                        Get.offAll(() => LoginPage());
                      },
                      child: Text('Login', textScaleFactor: 1.2)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

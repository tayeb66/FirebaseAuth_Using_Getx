// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:login_signup_using_getx/controllers/auth_controller.dart';
// import 'package:login_signup_using_getx/views/signUp_page.dart';
//
// class LoginPage extends GetView<AuthController> {
//
//   var emailController = TextEditingController();
//   var passwordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     Get.put(AuthController());
//     return Scaffold(
//       backgroundColor: Colors.teal,
//       appBar: AppBar(
//         title: Text('LoginPage'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Card(
//           elevation: 0.0,
//           margin: EdgeInsets.symmetric(horizontal: 12.0),
//           color: Colors.white,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 12.0),
//                 child: TextFormField(
//                   controller: emailController,
//                   obscureText: false,
//                   keyboardType: TextInputType.emailAddress,
//                   decoration: InputDecoration(
//                     hintText: 'Enter UserName',
//                     contentPadding: EdgeInsets.only(left: 10.0),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 12.0),
//                 child: TextFormField(
//                   controller: passwordController,
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     hintText: 'Enter Password',
//                     contentPadding: EdgeInsets.only(left: 10.0),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               ElevatedButton(
//                 style: TextButton.styleFrom(
//                     minimumSize: Size(200, 50), shape: StadiumBorder()),
//                 onPressed: () {
//                   controller.loginUser(emailController.text,
//                       passwordController.text);
//                 },
//                 child: Text(
//                   'Login',
//                   textScaleFactor: 1.2,
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text('Create a account ? '),
//                   TextButton(onPressed: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => SignUpPage()));
//                   }, child: Text('SignUp'))
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup_using_getx/controllers/auth_controller.dart';
import 'package:login_signup_using_getx/views/signUp_page.dart';

class LoginPage extends GetView<AuthController> {
  LoginPage({Key? key}) : super(key: key);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginPage'),
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
                controller.loginUser(emailController.text, passwordController.text);
              }, child: Text('Login')),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Create an account',
                    textScaleFactor: 1.2,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  TextButton(
                      onPressed: () {
                        Get.offAll(() => SignUpPage());
                      },
                      child: Text('SignUp', textScaleFactor: 1.2))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

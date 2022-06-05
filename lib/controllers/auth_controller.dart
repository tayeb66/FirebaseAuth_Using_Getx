// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:login_signup_using_getx/views/home_page.dart';
// import 'package:login_signup_using_getx/views/login_page.dart';
//
// class AuthController extends GetxController {
//   /// Initialize them
//   FirebaseAuth firebaseAuth = FirebaseAuth.instance;
//   Rxn<User> firebaseUser = Rxn<User>();
//
//   @override
//   void onInit() {
//     super.onInit();
//
//     /// Binding UI with FirebaseDatabase
//     firebaseUser.bindStream(firebaseAuth.authStateChanges());
//   }
//
//   void register(String email, password) async {
//     try {
//       await firebaseAuth.createUserWithEmailAndPassword(
//           email: email, password: password);
//       Get.offAll(() =>  LoginPage());
//     } catch (e) {
//       Get.snackbar(
//         'title',
//         'message',
//         backgroundColor: Colors.red,
//         snackPosition: SnackPosition.TOP,
//         titleText: const Text(
//           'Error Message',
//           style: TextStyle(color: Colors.white),
//         ),
//         messageText: Text(
//           e.toString(),
//           style: const TextStyle(color: Colors.white),
//         ),
//       );
//     }
//   }
//
//   void loginUser(String email, password) async {
//     try {
//       await firebaseAuth.signInWithEmailAndPassword(
//           email: email, password: password);
//       Get.offAll(() => const HomePage());
//     } catch (e) {
//       Get.snackbar('title', 'message',
//         backgroundColor: Colors.red,
//         snackPosition: SnackPosition.TOP,
//         titleText: const Text(
//           'Error Message',
//           style: TextStyle(color: Colors.white),
//         ),
//         messageText: Text(
//           e.toString(),
//           style: const TextStyle(color: Colors.white),
//         ),
//       );
//     }
//   }
//
//   void logOut()async{
//     await firebaseAuth.signOut();
//   }
// }
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup_using_getx/views/home_page.dart';
import 'package:login_signup_using_getx/views/login_page.dart';

class AuthController extends GetxController {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  Rxn<User> firebaseUser = Rxn<User>();

  @override
  void onInit() {
    super.onInit();
    firebaseUser.bindStream(firebaseAuth.authStateChanges());
  }

  void register(String email, password) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      Get.offAll(() => LoginPage());
    } catch (e) {
      Get.snackbar('title', 'message',
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.TOP,
          titleText: Text(
            'Error Message',
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            e.toString(),
            style: TextStyle(color: Colors.white),
          ));
    }
  }

  void loginUser(String email, password) async{
    try{
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      Get.offAll(() => HomePage6());
    }catch(e){
      Get.snackbar('title', 'message',
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.TOP,
          titleText: Text(
            'Error Message',
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            e.toString(),
            style: TextStyle(color: Colors.white),
          ));
    }
  }

  void logOut()async{
    await firebaseAuth.signOut();
    Get.offAll(() => LoginPage());
  }
}


import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruites_e_commerce/core/errors/exceptions.dart';

class FirebaseAuthServices {
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in firebaseAuthServices.createUserWithEmailAndPassword: $e and code is ${e.code}');
      if (e.code == 'weak-password') {
        throw CustomException(message: 'كلمة المرور المقدمة ضعيفة جدًا.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
            message: 'الحساب موجود بالفعل لهذا البريد الإلكتروني');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'لا يوجد اتصال بالانترنت');
      } else {
        throw CustomException(
            message: 'فشل إنشاء المستخدم، يرجى المحاولة مرة أخرى');
      }
    } catch (e) {
      throw CustomException(
          message: 'فشل إنشاء المستخدم، يرجى المحاولة مرة أخرى');
    }
  }
}

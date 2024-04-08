import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  RxBool loading = false.obs;

  void LoginApi() async {
    loading.value = true;
    try {
      final response =
          await post(Uri.parse('https://reqres.in/api/login'), body: {
        'email': emailController.value.text,
        'password': emailController.value.text,
      });
      var data = jsonDecode(response.body);
      print('ResPonse Code' + response.statusCode.toString());
      if (response.statusCode == 200) {
        loading.value = false;
        Get.snackbar('Login Successfull', 'Congration');
      } else {
        loading.value = false;
        print("Error 400");
        Get.snackbar('Login Failed', data['error']);
      }
    } catch (e) {
      loading.value = false;

      Get.snackbar('Exception', e.toString());
      print(e.toString());
    }
  }
}

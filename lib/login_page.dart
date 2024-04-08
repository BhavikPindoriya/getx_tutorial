import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Controller/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Tutorials'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailController.value,
              decoration: const InputDecoration(hintText: 'Email'),
            ),
            TextFormField(
              controller: controller.passwordController.value,
              decoration: const InputDecoration(hintText: 'Password'),
            ),
            const SizedBox(
              height: 50,
            ),
            Obx(
              () {
                return InkWell(
                  onTap: () {
                    controller.LoginApi();
                  },
                  child: controller.loading.value
                      ? const CircularProgressIndicator()
                      : Container(
                          height: 45,
                          color: Colors.grey,
                          child: const Center(
                            child: Text('Login'),
                          ),
                        ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

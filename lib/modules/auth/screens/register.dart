import 'package:clean/shared/assets/images.dart';

import './login.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
        systemOverlayStyle:
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      ),
      backgroundColor: Colors.white,
      body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          children: [
            const SizedBox(height: 64),
            const Text(
              'Create new account',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff31353B)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            const Text(
              'Create your account',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(
                    49,
                    53,
                    59,
                    0.7,
                  )),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 48),
            const Text('Full Name',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff31353B))),
            const SizedBox(height: 4),
            TextFormField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.person),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  hintText: 'Enter your full name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            const SizedBox(height: 16),
            const Text('Email',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff31353B))),
            const SizedBox(height: 4),
            TextFormField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.email),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  hintText: 'Example@gmail.com',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            const SizedBox(height: 16),
            const Text('Password',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff31353B))),
            const SizedBox(height: 4),
            SizedBox(
              height: 48,
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.visibility)),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    hintText: 'Enter your password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            const SizedBox(height: 48),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(500, 48),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: const Text('Sign Up'),
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.grey,
                    height: 2,
                    width: 100,
                  ),
                ),
                const SizedBox(height: 64),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 27),
                    child: Text(
                      'Or',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(
                            49,
                            53,
                            59,
                            0.7,
                          )),
                      textAlign: TextAlign.center,
                    )),
                const SizedBox(height: 64),
                Expanded(
                  child: Container(
                    color: Colors.grey,
                    height: 2,
                    width: 100,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(onTap: (){},child: SvgPicture.asset(MyImages.google)),
                const SizedBox(width: 16),
                InkWell(onTap: (){},child: SvgPicture.asset(MyImages.facebook)),
                const SizedBox(width: 16),
                InkWell(onTap: (){},child: SvgPicture.asset(MyImages.apple)),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account ?'),
                TextButton(onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
                }, child: const Text('Sign in'))
              ],
            )
          ]),
    );
  }
}

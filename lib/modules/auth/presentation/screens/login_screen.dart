import 'package:flutter/material.dart';

import 'package:joystick/shared/constants/my_images.dart';
import 'package:joystick/shared/routes/routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          children: [
            const SizedBox(height: 128),
            const Text(
              'Welcome',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff31353B)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            const Text(
              'Sign in to your account',
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
            Row(
              children: [
                Checkbox(
                  visualDensity: const VisualDensity(horizontal: -4),
                  value: false,
                  onChanged: (v) {},
                  side: const BorderSide(
                      width: 1,
                      color: Color.fromRGBO(
                        49,
                        53,
                        59,
                        0.7,
                      )),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const Text('Remember me'),
                const Spacer(),
                TextButton(
                    onPressed: () {}, child: const Text('Forgot Password?'))
              ],
            ),
            const SizedBox(height: 48),
            ElevatedButton(
              onPressed: () async {
                Navigator.pushReplacementNamed(context, MyRoutes.home);
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(500, 48),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: const Text('Login'),
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
                SizedBox(
                    height: 48,
                    width: 48,
                    child: InkWell(
                        onTap: () {}, child: Image.asset(MyImages.google))),
                const SizedBox(width: 16),
                SizedBox(
                    height: 48,
                    width: 48,
                    child: InkWell(
                        onTap: () {}, child: Image.asset(MyImages.facebook))),
                const SizedBox(width: 16),
                SizedBox(
                    height: 48,
                    width: 48,
                    child: InkWell(
                        onTap: () {}, child: Image.asset(MyImages.apple))),
              ],
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an account ?'),
                TextButton(onPressed: () {
                  Navigator.pushReplacementNamed(context, MyRoutes.register);
                }, child: const Text('Sign Up'))
              ],
            )
          ]),
    );
  }
}

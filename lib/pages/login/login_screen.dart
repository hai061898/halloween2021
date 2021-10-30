import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange[800],
        body: Stack(
          children: [
            Opacity(
              opacity: 0.9,
              child: Image.asset(
                'assets/pic5.jpg',
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const TextCustom(
              bottom: 200,
              width: 250,
              height: 45,
              icon: Icons.alternate_email,
            ),
            const TextCustom2(
              right: 0,
              bottom: 140,
              width: 250,
              height: 45,
              icon: Icons.lock,
            ),
            Positioned(
              bottom: 50,
              right: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFFF5F2F),
                  elevation: 10,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              right: 95,
              child: Row(
                children: const [
                  Text(
                    'Don\'t Have Account ?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    ' Sign up',
                    style: TextStyle(
                      color: Color(0xFFD93C33),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextCustom extends StatelessWidget {
  const TextCustom({
    Key? key,
    this.width,
    this.height,
    this.bottom,
    this.right,
    this.hint,
    this.icon,
  }) : super(key: key);
  final double? height;
  final double? width;
  final double? bottom;
  final double? right;
  final String? hint;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: bottom,
      right: right,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 0.1, sigmaY: 0.1),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(50),
                bottomRight: Radius.circular(50)),
            gradient: RadialGradient(
              radius: 50,
              colors: [
                Colors.white.withOpacity(0.20),
                Colors.white.withOpacity(0.1),
              ],
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: Icon(icon),
                hintText: hint,
                hintStyle: const TextStyle(color: Colors.black)),
          ),
        ),
      ),
    );
  }
}

class TextCustom2 extends StatelessWidget {
  const TextCustom2({
    Key? key,
    this.width,
    this.height,
    this.bottom,
    this.right,
    this.hint,
    this.icon,
  }) : super(key: key);
  final double? height;
  final double? width;
  final double? bottom;
  final double? right;
  final String? hint;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: bottom,
      right: right,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 0.1, sigmaY: 0.1),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50), bottomLeft: Radius.circular(50)),
            gradient: RadialGradient(
              radius: 50,
              colors: [
                Colors.white.withOpacity(0.20),
                Colors.white.withOpacity(0.1),
              ],
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: Icon(icon),
                hintText: hint,
                hintStyle: const TextStyle(color: Colors.black)),
          ),
        ),
      ),
    );
  }
}

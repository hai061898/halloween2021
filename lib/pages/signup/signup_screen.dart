import 'dart:ui';

import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/pic4.jpg',
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            const TextCustom(
              bottom: 300,
              width: 250,
              height: 45,
              hint: "Email",
            ),
            const TextCustom2(
              bottom: 240,
              right: 0,
              width: 250,
              height: 45,
              hint: 'Phone',
            ),
            const TextCustom(
              bottom: 180,
              width: 250,
              height: 45,
              hint: "Password",
            ),
             Positioned(
              bottom: 110,
              right: 75,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding:const EdgeInsets.symmetric(horizontal: 75, vertical: 12),
                  primary:const Color(0xFFF79E34),
                ),
              ),
            ),

              Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 275,
                height: 90,
                decoration:const BoxDecoration(
                  color: Color(0xFFF34604),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    const Text(
                      'Sign up with',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                   const SizedBox(width: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor:const Color(0xFFF79E34),
                          child: Image.asset(
                            'logo1.png',
                            width: 35,
                            height: 35,
                            color: Colors.white,
                          ),
                        ),
                       const SizedBox(width: 10),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor:const Color(0xFFF79E34),
                          child: Image.asset(
                            'logo2.png',
                            width: 35,
                            height: 35,
                            color: Colors.white,
                          ),
                        ),
                       const SizedBox(width: 20),
                      ],
                    ),
                  ],
                ),
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
  }) : super(key: key);
  final double? height;
  final double? width;
  final double? bottom;
  final double? right;
  final String? hint;

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
  }) : super(key: key);
  final double? height;
  final double? width;
  final double? bottom;
  final double? right;
  final String? hint;

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
                topLeft: Radius.circular(50),
                bottomLeft: Radius.circular(50)),
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
                hintText: hint,
                hintStyle: const TextStyle(color: Colors.black)),
          ),
        ),
      ),
    );
  }
}

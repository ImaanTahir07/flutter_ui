import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInScr extends StatefulWidget {
  const LogInScr({super.key});

  @override
  State<LogInScr> createState() => _LogInScrState();
}

class _LogInScrState extends State<LogInScr> {
  @override
  Widget build(BuildContext context) {
    var ischecked = false;
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xffad5389),
        Color(0xff3c1053),
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
            ),
            Text(
              "Login",
              style: GoogleFonts.ubuntu(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: 38),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Hello, Welcome Back",
              style: GoogleFonts.ubuntu(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 20),
            ),
            SizedBox(
              height: 35,
            ),
            Center(
              child: Container(
                height: 300,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Username",
                          style: GoogleFonts.ubuntu(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              decoration: TextDecoration.none,
                              color: Color.fromARGB(255, 30, 30, 30)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Material(
                          child: SizedBox(
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(255, 24, 24, 24),
                                        width: 2)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Password",
                          style: GoogleFonts.ubuntu(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              decoration: TextDecoration.none,
                              color: Color.fromARGB(255, 30, 30, 30)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Material(
                          child: SizedBox(
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(255, 24, 24, 24),
                                        width: 2)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          height: 40,
                          width: 310,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "Continue",
                              style: GoogleFonts.ubuntu(
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white,
                                  letterSpacing: 1),
                            ),
                          ),
                        )
                      ]),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Material(
                      color: Colors.transparent,
                      child: Checkbox(
                        value: ischecked,
                        onChanged: (value) {
                          setState(() {
                            ischecked = value!;
                          });
                        },
                      ),
                    ),
                    Text(
                      "Remember Me?",
                      style: GoogleFonts.ubuntu(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Text(
                  "Forget Password",
                  style: GoogleFonts.ubuntu(
                      decoration: TextDecoration.none,
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member yet?",
                  style: GoogleFonts.ubuntu(
                      decoration: TextDecoration.none,
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 7,
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "Join Now",
                      style: GoogleFonts.ubuntu(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          color: Colors.yellow.shade700,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

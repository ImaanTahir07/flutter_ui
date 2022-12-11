import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ui/view/ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailVer extends StatefulWidget {
  const EmailVer({super.key});

  @override
  State<EmailVer> createState() => _EmailVerState();
}

class _EmailVerState extends State<EmailVer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xffad5389),
          Color(0xff3c1053),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 350,
            width: 325,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Icon(
                  Icons.check,
                  color: Colors.green,
                  size: 60,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Email Verification!",
                  style: GoogleFonts.ubuntu(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: SizedBox(
                    height: 100,
                    width: 300,
                    child: Center(
                      child: Text(
                        "Please check your email inbox to confirm and complete your details after logging in the application.\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tThank you",
                        style: GoogleFonts.ubuntu(
                            wordSpacing: 2,
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                            color: Color.fromARGB(255, 68, 68, 68),
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 37,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UI(),
                        ));
                  },
                  child: Text(
                    "OK",
                    style: GoogleFonts.ubuntu(
                        letterSpacing: 2,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 233, 210, 11),
                      shape: StadiumBorder()),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

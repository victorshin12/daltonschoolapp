import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mailto/mailto.dart';

class AboutTabView extends StatefulWidget {
  @override
  _AboutTabViewState createState() => _AboutTabViewState();
}

class _AboutTabViewState extends State<AboutTabView> {
  double widthOfButton = 130;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 70,
          child: Image.asset('assets/cdslogo.png'),
        ),
        SizedBox(
          height: 40,
        ),
        SizedBox(
          width: widthOfButton,
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.blue))),
            ),
            child: Text("About CDS"),
            onPressed: () {},
          ),
        ),
        SizedBox(
          height: 25,
        ),
        SizedBox(
          width: widthOfButton,
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.blue))),
            ),
            child: Text("About the App"),
            onPressed: () {},
          ),
        ),
        SizedBox(
          height: 25,
        ),
        SizedBox(
          width: widthOfButton,
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.blue))),
            ),
            child: Text("Website"),
            onPressed: _launchWebsite,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        SizedBox(
          width: widthOfButton,
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.blue))),
            ),
            child: Text("Contact"),
            onPressed: launchMailto,
          ),
        ),
        SizedBox(
          height: 80,
        ),
      ],
    );
  }

  _launchWebsite() async {
    const url = 'https://cdsnet.kr';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchMailto() async {
    final mailtoLink = Mailto(
      to: ['wooseokshin2023@daltonschool.kr', 'gkim2023@daltonschool.kr'],
      subject: 'CDS App Feedback',
      body: '',
    );
    // Convert the Mailto instance into a string.
    // Use either Dart's string interpolation
    // or the toString() method.
    await launch('$mailtoLink');
  }
}

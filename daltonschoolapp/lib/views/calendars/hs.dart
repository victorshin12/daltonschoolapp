import "package:flutter/material.dart";
import 'package:webview_flutter/webview_flutter.dart';

class HS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("High School Calendar"),
        backgroundColor: Color(0xFF04103E),
      ),
      body: SafeArea(
        child: WebView(
          initialUrl: "https://calendar.google.com/calendar/u/0/embed?color=%23cd74e6&src=daltonschool.kr_g63qm2glat8l9uul9olj1f2n14@group.calendar.google.com",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
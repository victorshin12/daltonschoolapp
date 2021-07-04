import "package:flutter/material.dart";
import 'package:webview_flutter/webview_flutter.dart';

class MS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Middle School Calendar"),
        backgroundColor: Color(0xFF04103E),
      ),
      body: SafeArea(
        child: WebView(
          initialUrl: "https://calendar.google.com/calendar/u/0/embed?src=daltonschool.kr_i3pg3ggmscinlfpmnn3r931e3k@group.calendar.google.com&ctz=Asia/Seoul",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
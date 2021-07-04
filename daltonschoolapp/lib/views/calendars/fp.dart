import "package:flutter/material.dart";
import 'package:webview_flutter/webview_flutter.dart';

class FP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Program Calendar"),
        backgroundColor: Color(0xFF04103E),
      ),
      body: SafeArea(
        child: WebView(
          initialUrl: "https://calendar.google.com/calendar/embed?src=daltonschool.kr_7so53sak57u6gfjopmcgdbvoh4%40group.calendar.google.com&ctz=Asia%2FSeoul",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
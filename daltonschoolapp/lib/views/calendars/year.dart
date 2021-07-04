import "package:flutter/material.dart";
import 'package:pdf_render/pdf_render_widgets.dart';
class Year extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("School Year Calendar"),
        backgroundColor: Color(0xFF04103E),
      ),
      body: PdfViewer.openAsset('assets/year.pdf')
    );
  }
}
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'pdf.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume PDF Viewer',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  void _showResume(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PdfPreviewScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resume PDF'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showResume(context),
          child: Text('Show Resume'),
        ),
      ),
    );
  }
}

class PdfPreviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Preview'),
      ),
      body: PdfPreview(
        build: (format) => generateResumePdf(format),
        // Optional: Customize preview settings
        pdfFileName: 'YourName_Resume.pdf',
        allowSharing: true,
        allowPrinting: true,
        canChangePageFormat: false,
      ),
    );
  }
}

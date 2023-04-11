import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';
import 'package:flutter/material.dart';

class ViewPdf extends StatefulWidget {
  late String pdfLink;
  ViewPdf({required this.pdfLink});
  @override
  _ViewPdfState createState() => _ViewPdfState();
}

class _ViewPdfState extends State<ViewPdf> {
  PDFDocument? doc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ViewNow();
  }

  ViewNow() async {
    String data = widget.pdfLink;
    doc = await PDFDocument.fromURL(data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //get data from first class

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Subject"),
      ),
      body: doc == null
          ? Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : PDFViewer(document: doc!),
    );
  }
}
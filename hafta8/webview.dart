import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webview extends StatefulWidget {
  const webview({super.key});

  @override
  State<webview> createState() => _webviewState();
}

class _webviewState extends State<webview> {
  late WebViewController controller;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse("https://www.google.com"));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: WebViewWidget(controller: controller),
      ),
    );
  }
}

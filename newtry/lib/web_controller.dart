import 'package:webview_flutter/webview_flutter.dart';

class WebController {
  final WebViewController controller;

  WebController() : controller = WebViewController() {
    controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    controller.loadRequest(Uri.parse('https://www.gmeremit.com/')); 
  }
}
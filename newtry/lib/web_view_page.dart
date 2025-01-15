import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'web_controller.dart';

class WebViewPage extends StatelessWidget {
  const WebViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final webController = Provider.of<WebController>(context);
    return SafeArea(
      child: WebViewWidget(
        controller: webController.controller,
      ),
    );
  }
}
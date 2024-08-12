import 'package:flutter/material.dart';
import 'package:news/view/widgets/icon_button_back_custom.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  final String urlWebView;

  const WebViewScreen({
    Key? key,
    required this.urlWebView,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: iconButtonBackCustom(context),
      ),
      body: WebView(
        initialUrl: urlWebView,
      ),
    );
  }
}

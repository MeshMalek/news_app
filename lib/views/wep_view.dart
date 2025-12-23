import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WepViewPage extends StatelessWidget {
  const WepViewPage({super.key, required this.url, required this.title});
  final String url;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(title: Text(title)),
      body: SafeArea(
        child: WebViewWidget(
          controller: WebViewController()
            ..setJavaScriptMode(JavaScriptMode.unrestricted)
            ..loadRequest(Uri.parse(url)),
        ),
      ),
    );
  }
}

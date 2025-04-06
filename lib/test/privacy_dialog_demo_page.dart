import 'package:flutter/material.dart';
import 'dialogtest.dart';

class PrivacyDialogDemoPage extends StatelessWidget {
  const PrivacyDialogDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('隐私协议弹窗示例'), centerTitle: true),
      body: const PrivacyDialogDemo(),
    );
  }
}

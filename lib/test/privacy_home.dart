import 'package:flutter/material.dart';
import 'exact_privacy_dialog.dart';

class PrivacyHomePage extends StatelessWidget {
  const PrivacyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('隐私政策弹窗示例'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/privacy_demos');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
                minimumSize: const Size(250, 60),
              ),
              child: const Text('查看多种风格弹窗', style: TextStyle(fontSize: 18)),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // 直接显示精确复制的弹窗
                const ExactPrivacyDialog().showExactPrivacyDialog(context);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
                minimumSize: const Size(250, 60),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text('显示精确复制弹窗', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}

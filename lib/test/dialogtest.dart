import 'package:flutter/material.dart';

class PrivacyDialogDemo extends StatefulWidget {
  const PrivacyDialogDemo({Key? key}) : super(key: key);

  @override
  State<PrivacyDialogDemo> createState() => _PrivacyDialogDemoState();
}

class _PrivacyDialogDemoState extends State<PrivacyDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('隐私协议弹窗示例'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _showBasicDialog(context),
              child: const Text('基础风格'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _showMaterialDialog(context),
              child: const Text('Material 风格'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _showModernDialog(context),
              child: const Text('现代圆角风格'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _showDarkModeDialog(context),
              child: const Text('暗黑模式风格'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _showGradientDialog(context),
              child: const Text('渐变风格'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _showMinimalistDialog(context),
              child: const Text('极简风格'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _showCustomShapeDialog(context),
              child: const Text('自定义形状风格'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _showIllustrationDialog(context),
              child: const Text('插图风格'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _showAnimatedDialog(context),
              child: const Text('动画风格'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _showColorfulDialog(context),
              child: const Text('彩色风格'),
            ),
          ],
        ),
      ),
    );
  }

  // 1. 基础风格
  void _showBasicDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('用户隐私政策'),
          content: SingleChildScrollView(
            child: const Text(
              '感谢您使用我们的应用。在使用前，请仔细阅读我们的隐私政策，了解我们如何收集、使用和保护您的个人信息。'
              '\n\n我们收集的信息包括但不限于：设备信息、位置信息、使用数据等。'
              '\n\n我们承诺保护您的隐私安全，不会将您的个人信息用于未经授权的用途。',
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('拒绝'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('同意'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  // 2. Material 风格
  void _showMaterialDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          elevation: 16,
          child: Container(
            padding: const EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width * 0.85,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  '隐私政策',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Icon(Icons.security, size: 48, color: Colors.blue),
                const SizedBox(height: 16),
                const Text(
                  '我们重视您的隐私',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 200,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: const SingleChildScrollView(
                    child: Text(
                      '感谢您使用我们的应用。在使用前，请仔细阅读我们的隐私政策，了解我们如何收集、使用和保护您的个人信息。'
                      '\n\n我们收集的信息包括但不限于：设备信息、位置信息、使用数据等。'
                      '\n\n我们承诺保护您的隐私安全，不会将您的个人信息用于未经授权的用途。'
                      '\n\n您可以随时在设置中更改隐私选项或联系我们的客服团队。',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('拒绝'),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('同意'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // 3. 现代圆角风格
  void _showModernDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 16,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 60,
                  height: 6,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(3),
                  ),
                  margin: const EdgeInsets.only(bottom: 16),
                ),
                const Text(
                  '隐私保护声明',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 24),
                Container(
                  height: 220,
                  child: const SingleChildScrollView(
                    child: Text(
                      '感谢您使用我们的应用。在使用前，请仔细阅读我们的隐私政策，了解我们如何收集、使用和保护您的个人信息。'
                      '\n\n我们收集的信息包括但不限于：设备信息、位置信息、使用数据等。'
                      '\n\n我们承诺保护您的隐私安全，不会将您的个人信息用于未经授权的用途。'
                      '\n\n您可以随时在设置中更改隐私选项或联系我们的客服团队。',
                      style: TextStyle(fontSize: 15, height: 1.5),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('拒绝'),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('同意'),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // 4. 暗黑模式风格
  void _showDarkModeDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: const Color(0xFF1E1E1E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 0,
          child: Container(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.privacy_tip_outlined,
                  color: Colors.purpleAccent,
                  size: 48,
                ),
                const SizedBox(height: 20),
                const Text(
                  '隐私政策',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  height: 200,
                  child: const SingleChildScrollView(
                    child: Text(
                      '感谢您使用我们的应用。在使用前，请仔细阅读我们的隐私政策，了解我们如何收集、使用和保护您的个人信息。'
                      '\n\n我们收集的信息包括但不限于：设备信息、位置信息、使用数据等。'
                      '\n\n我们承诺保护您的隐私安全，不会将您的个人信息用于未经授权的用途。'
                      '\n\n您可以随时在设置中更改隐私选项或联系我们的客服团队。',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        height: 1.6,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          '拒绝',
                          style: TextStyle(color: Colors.grey),
                        ),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('同意'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purpleAccent,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // 5. 渐变风格
  void _showGradientDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF6448FE), Color(0xFF5FC6FF)],
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 10,
                ),
              ],
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  '隐私保护协议',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 8.0,
                        color: Colors.black26,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 200,
                  padding: const EdgeInsets.all(16),
                  child: const SingleChildScrollView(
                    child: Text(
                      '感谢您使用我们的应用。在使用前，请仔细阅读我们的隐私政策，了解我们如何收集、使用和保护您的个人信息。'
                      '\n\n我们收集的信息包括但不限于：设备信息、位置信息、使用数据等。'
                      '\n\n我们承诺保护您的隐私安全，不会将您的个人信息用于未经授权的用途。'
                      '\n\n您可以随时在设置中更改隐私选项或联系我们的客服团队。',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        height: 1.6,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          '拒绝',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white.withOpacity(0.2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          '同意',
                          style: TextStyle(
                            color: Color(0xFF6448FE),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // 6. 极简风格
  void _showMinimalistDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.white.withOpacity(0.9),
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          insetPadding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      offset: const Offset(0, 2),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const Text(
                      '隐私政策',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container(
                      height: 180,
                      child: const SingleChildScrollView(
                        child: Text(
                          '感谢您使用我们的应用。在使用前，请仔细阅读我们的隐私政策，了解我们如何收集、使用和保护您的个人信息。'
                          '\n\n我们收集的信息包括但不限于：设备信息、位置信息、使用数据等。'
                          '\n\n我们承诺保护您的隐私安全，不会将您的个人信息用于未经授权的用途。',
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.6,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              '拒绝',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                                side: const BorderSide(color: Colors.black12),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              '同意',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.black.withOpacity(0.05),
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // 7. 自定义形状风格
  void _showCustomShapeDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      '用户隐私协议',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      height: 200,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const SingleChildScrollView(
                        child: Text(
                          '感谢您使用我们的应用。在使用前，请仔细阅读我们的隐私政策，了解我们如何收集、使用和保护您的个人信息。'
                          '\n\n我们收集的信息包括但不限于：设备信息、位置信息、使用数据等。'
                          '\n\n我们承诺保护您的隐私安全，不会将您的个人信息用于未经授权的用途。'
                          '\n\n您可以随时在设置中更改隐私选项或联系我们的客服团队。',
                          style: TextStyle(fontSize: 14, height: 1.5),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('拒绝'),
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.grey[600],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('同意'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -40,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.teal,
                  child: const Icon(
                    Icons.shield,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // 8. 插图风格
  void _showIllustrationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 120,
                  child: Center(
                    // 在实际应用中，这里应该是一个插图
                    child: Icon(
                      Icons.security,
                      size: 80,
                      color: Colors.blue[300],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  '隐私政策',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  '我们重视您的隐私和数据安全',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                Container(
                  height: 160,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: const SingleChildScrollView(
                    child: Text(
                      '感谢您使用我们的应用。在使用前，请仔细阅读我们的隐私政策，了解我们如何收集、使用和保护您的个人信息。'
                      '\n\n我们收集的信息包括但不限于：设备信息、位置信息、使用数据等。'
                      '\n\n我们承诺保护您的隐私安全，不会将您的个人信息用于未经授权的用途。',
                      style: TextStyle(fontSize: 14, height: 1.5),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('以后再说'),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          side: BorderSide(color: Colors.blue[300]!),
                          foregroundColor: Colors.blue[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('我已阅读并同意'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[300],
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // 9. 动画风格
  void _showAnimatedDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black45,
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) {
        return ScaleTransition(
          scale: CurvedAnimation(parent: animation, curve: Curves.easeOutQuad),
          child: Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              padding: const EdgeInsets.all(24),
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TweenAnimationBuilder(
                    duration: const Duration(milliseconds: 800),
                    tween: Tween<double>(begin: 0, end: 1),
                    builder: (context, double value, child) {
                      return Opacity(opacity: value, child: child);
                    },
                    child: const Column(
                      children: [
                        Icon(Icons.privacy_tip, color: Colors.orange, size: 56),
                        SizedBox(height: 16),
                        Text(
                          '隐私政策',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '保护您的隐私是我们的责任',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  TweenAnimationBuilder(
                    duration: const Duration(milliseconds: 800),
                    tween: Tween<double>(begin: 0, end: 1),
                    curve: Curves.easeOutQuad,
                    builder: (context, double value, child) {
                      return Opacity(
                        opacity: value,
                        child: Transform.translate(
                          offset: Offset(0, 20 * (1 - value)),
                          child: child,
                        ),
                      );
                    },
                    child: Container(
                      height: 180,
                      child: const SingleChildScrollView(
                        child: Text(
                          '感谢您使用我们的应用。在使用前，请仔细阅读我们的隐私政策，了解我们如何收集、使用和保护您的个人信息。'
                          '\n\n我们收集的信息包括但不限于：设备信息、位置信息、使用数据等。'
                          '\n\n我们承诺保护您的隐私安全，不会将您的个人信息用于未经授权的用途。'
                          '\n\n您可以随时在设置中更改隐私选项或联系我们的客服团队。',
                          style: TextStyle(fontSize: 14, height: 1.5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  TweenAnimationBuilder(
                    duration: const Duration(milliseconds: 1000),
                    tween: Tween<double>(begin: 0, end: 1),
                    curve: Curves.elasticOut,
                    builder: (context, double value, child) {
                      return Transform.scale(scale: value, child: child);
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('拒绝'),
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('同意'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // 10. 彩色风格
  void _showColorfulDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFFF9966), // 橙色
                        Color(0xFFFF5E62), // 红色
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      const Icon(
                        Icons.lock_outline,
                        color: Colors.white,
                        size: 40,
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        '隐私政策',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          '请仔细阅读以下内容',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.info_outline,
                            color: Color(0xFFFF9966),
                            size: 16,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            '为什么我们需要收集信息？',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 180,
                        child: const SingleChildScrollView(
                          child: Text(
                            '感谢您使用我们的应用。在使用前，请仔细阅读我们的隐私政策，了解我们如何收集、使用和保护您的个人信息。'
                            '\n\n我们收集的信息包括但不限于：设备信息、位置信息、使用数据等。'
                            '\n\n我们承诺保护您的隐私安全，不会将您的个人信息用于未经授权的用途。'
                            '\n\n您可以随时在设置中更改隐私选项或联系我们的客服团队。',
                            style: TextStyle(
                              fontSize: 14,
                              height: 1.5,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('不同意'),
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.grey[600],
                                side: BorderSide(color: Colors.grey[300]!),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 14,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('同意'),
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: const Color(0xFFFF5E62),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 14,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}


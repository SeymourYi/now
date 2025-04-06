import 'package:flutter/material.dart';

class ExactPrivacyDialog extends StatelessWidget {
  const ExactPrivacyDialog({Key? key}) : super(key: key);

  void showExactPrivacyDialog(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final dialogWidth = screenWidth * 0.85; // 控制弹窗宽度为屏幕宽度的85%左右

    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.5), // 调整背景颜色
      builder: (BuildContext context) {
        return Dialog(
          //宽度设置
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3), // 更小的圆角
          ),
          insetPadding: EdgeInsets.symmetric(horizontal: 20),
          backgroundColor: Colors.white,
          elevation: 0,
          child: Container(
            width: dialogWidth,
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  '请阅读下方隐私政策',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF5D5D5D),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2F2F2), // 浅灰色背景
                    borderRadius: BorderRadius.circular(4), // 更小的圆角
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          '隐私政策',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF5D5D5D),
                          ),
                        ),
                      ),
                      const SizedBox(height: 18),
                      // 更新日期和生效日期行
                      Row(
                        children: const [
                          Text(
                            '更新日期: ',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF5D5D5D),
                            ),
                          ),
                          Text(
                            '2024/12/6',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF5D5D5D),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: const [
                          Text(
                            '生效日期: ',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF5D5D5D),
                            ),
                          ),
                          Text(
                            '2024/12/6',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF5D5D5D),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        '导言',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF5D5D5D),
                        ),
                      ),
                      const SizedBox(height: 12),
                      SingleChildScrollView(
                        child: const Text(
                          'Navi是一款由 商丘千寻微梦信息科技有限公司（以下简称"我们"）提供的产品。您在使用我们的服务时，我们可能会收集和使用您的相关信息。我们希望通过本《隐私政策》向您说明，在使用我们的服务时，我们如何收集、使用、储存和分享这些信息，以及我们为您提供的访问、更新、控制和保护这些信息的方式。',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF5D5D5D),
                            height: 1.4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: const Text(
                          '不同意',
                          style: TextStyle(
                            color: Color(0xFF5D5D5D),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: const Text(
                          '同意',
                          style: TextStyle(
                            color: Color(0xFF4170CD),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('隐私政策弹窗'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
        foregroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.grey.shade300, // 添加背景色，模拟图片中的背景
        child: Center(
          child: ElevatedButton(
            onPressed: () => showExactPrivacyDialog(context),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              textStyle: const TextStyle(fontSize: 18),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            child: const Text('显示隐私政策弹窗'),
          ),
        ),
      ),
    );
  }
}

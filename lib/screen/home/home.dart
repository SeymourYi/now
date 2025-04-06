import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:lottie/lottie.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with TickerProviderStateMixin {
  int _selectedIndex = 0;
  late TabController _tabController;

  final List<String> _welcomeTexts = [
    "欢迎回来！",
    "今天过得如何？",
    "准备好开始了吗？",
    "探索更多功能！",
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
        backgroundColor: const Color.fromARGB(255, 126, 121, 211),
        title: Text(
          'Navi',
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
        leading: GFIconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            _showBottomSheet();
          },
          type: GFButtonType.transparent,
        ),
        actions: <Widget>[
          GFIconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
            type: GFButtonType.transparent,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15.r),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(15.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GFAvatar(
                        radius: 25.r,
                        backgroundImage: const NetworkImage(
                          'https://via.placeholder.com/150',
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '用户名',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          AnimatedTextKit(
                            animatedTexts:
                                _welcomeTexts
                                    .map(
                                      (text) => TypewriterAnimatedText(
                                        text,
                                        textStyle: TextStyle(
                                          fontSize: 14.sp,
                                          color: Colors.grey[600],
                                        ),
                                        speed: const Duration(
                                          milliseconds: 100,
                                        ),
                                      ),
                                    )
                                    .toList(),
                            totalRepeatCount: 1,
                            pause: const Duration(milliseconds: 1000),
                            displayFullTextOnTap: true,
                            stopPauseOnTap: true,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            child: GridView.count(
              primary: false,
              padding: EdgeInsets.all(20.r),
              crossAxisSpacing: 15.w,
              mainAxisSpacing: 15.h,
              crossAxisCount: 2,
              children: <Widget>[
                _buildFeatureCard('数据统计', Icons.bar_chart, Colors.blue, () {}),
                _buildFeatureCard(
                  '待办事项',
                  Icons.check_circle_outline,
                  Colors.green,
                  () {},
                ),
                _buildFeatureCard('消息中心', Icons.message, Colors.orange, () {}),
                _buildFeatureCard('返回登录', Icons.exit_to_app, Colors.red, () {
                  Navigator.of(context).pushReplacementNamed('/login');
                }),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, -1),
            ),
          ],
        ),
        child: TabBar(
          controller: _tabController,
          labelColor: const Color.fromARGB(255, 126, 121, 211),
          unselectedLabelColor: Colors.grey,
          indicatorColor: const Color.fromARGB(255, 126, 121, 211),
          tabs: [
            Tab(icon: Icon(Icons.home, size: 24.sp), text: '首页'),
            Tab(icon: Icon(Icons.explore, size: 24.sp), text: '发现'),
            Tab(icon: Icon(Icons.message, size: 24.sp), text: '消息'),
            Tab(icon: Icon(Icons.person, size: 24.sp), text: '我的'),
          ],
        ),
      ),
    );
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          height: 300.h,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              Container(
                height: 50.h,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 126, 121, 211),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Center(
                  child: Text(
                    '菜单选项',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.w,
                      vertical: 10.h,
                    ),
                    child: Column(
                      children: [
                        GFListTile(
                          avatar: const Icon(Icons.settings),
                          title: Text('设置', style: TextStyle(fontSize: 16.sp)),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        GFListTile(
                          avatar: const Icon(Icons.person),
                          title: Text(
                            '个人资料',
                            style: TextStyle(fontSize: 16.sp),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        GFListTile(
                          avatar: const Icon(Icons.help),
                          title: Text(
                            '帮助中心',
                            style: TextStyle(fontSize: 16.sp),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        GFListTile(
                          avatar: const Icon(
                            Icons.exit_to_app,
                            color: Colors.red,
                          ),
                          title: Text(
                            '退出登录',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.red,
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.of(
                              context,
                            ).pushReplacementNamed('/login');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildFeatureCard(
    String title,
    IconData icon,
    Color color,
    Function() onTap,
  ) {
    return GFCard(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.all(10.r),
      color: Colors.white,
      boxFit: BoxFit.cover,
      titlePosition: GFPosition.start,
      elevation: 2,
      content: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GFIconBadge(
              counterChild: const GFBadge(
                text: "新",
                shape: GFBadgeShape.circle,
                size: GFSize.SMALL,
              ),
              child: Icon(icon, size: 40.sp, color: color),
            ),
            SizedBox(height: 10.h),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

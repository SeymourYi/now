import 'package:dio/dio.dart';
import '../Store/storeutils.dart';

class HttpClient {
  static const String baseUrl = "http://122.51.93.212:5361";
  static late Dio dio;

  static Future<void> init() async {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: Duration(seconds: 30),
        receiveTimeout: Duration(seconds: 30),
        // 添加额外的请求选项
        validateStatus: (status) {
          return status != null && status < 500; // 接受所有非500错误状态码
        },
      ),
    );

    // 请求拦截器
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          // 添加公共的请求头，如 Authorization
          final token = await SharedPrefsUtils.getToken();
          if (token != null && token.isNotEmpty) {
            options.headers["Authorization"] = token;
            print('添加token: $token'); // 调试日志
          } else {
            print('无token'); // 调试日志
          }

          // 确保Content-Type存在
          if (options.headers['Content-Type'] == null) {
            options.headers['Content-Type'] = 'application/json; charset=utf-8';
          }

          print('请求URL: ${options.uri}'); // 打印请求URL
          print('请求方法: ${options.method}'); // 打印请求方法
          print('请求头: ${options.headers}'); // 打印请求头

          return handler.next(options);
        },
      ),
    );

    // 返回拦截器
    dio.interceptors.add(
      InterceptorsWrapper(
        onResponse: (response, handler) {
          print('响应状态码: ${response.statusCode}'); // 调试日志
          print('响应数据: ${response.data}'); // 调试日志
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          print('请求错误: ${e.message}'); // 调试日志
          print('错误响应: ${e.response?.data}'); // 调试日志
          print('错误类型: ${e.type}'); // 打印错误类型
          print('错误请求选项: ${e.requestOptions.uri}'); // 打印请求选项

          if (e.response?.statusCode == 401) {
            // token失效，清除本地token
            SharedPrefsUtils.clearToken();
          }
          return handler.next(e);
        },
      ),
    );
  }
}

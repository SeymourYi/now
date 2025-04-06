import 'package:dio/dio.dart';
import '../utils/mydio.dart';

class LoginService {
  Future<Map<String, dynamic>> Login(String number, String password) async {
    try {
      var response = await HttpClient.dio.post(
        "/user/login",
        queryParameters: {"username": number, "password": password},
        options: Options(
          contentType: 'application/json',
          headers: {"Content-Type": "application/json; charset=utf-8"},
          validateStatus: (status) => status! < 500,
        ),
      );

      if (response.statusCode != 200) {
        throw Exception('服务器响应错误: ${response.statusCode}');
      }

      return response.data;
    } on DioException catch (e) {
      print('登录错误详情: ${e.toString()}');
      if (e.response != null) {
        print('错误状态码: ${e.response?.statusCode}');
        print('错误数据: ${e.response?.data}');
      }
      throw Exception('登录失败: ${e.message}');
    } catch (e) {
      print('其他登录错误: $e');
      throw Exception('登录失败: $e');
    }
  }
}

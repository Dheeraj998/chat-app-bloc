import 'dart:convert';

import 'package:chat_app_bloc/core/constant.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioServices {
  BaseOptions options = BaseOptions(
    baseUrl: baseUrl,
    followRedirects: false,
    connectTimeout: const Duration(seconds: 60), // 60 seconds
    receiveTimeout: const Duration(seconds: 60), // 60 seconds
    validateStatus: (status) => true,
  );

  // String accessToken = Get.isRegistered<AuthController>()
  //     ? Get.find<AuthController>().token
  //     : Get.find<HomeController>().token ?? '';

  Future get({required String? url}) async {
    final dioInstance = Dio(options);
    dioInstance.options.headers['Authorization'] = 'Bearer ';

    try {
      final response = await dioInstance.request(
        url!,
        options: Options(method: 'GET'),
      );
      debugPrint(
          '******************************* G E T *******************************');
      debugPrint("");
      debugPrint('${response.realUri}');
      debugPrint('${response.statusCode}');

      debugPrint('$response');
      debugPrint("");
      debugPrint(
          '******************************* G E T *******************************');
      return response;
    } on DioError catch (e) {
      debugPrint('error full');
      debugPrint('$e');
      if (e.type == DioErrorType.badResponse) {
        debugPrint('catched');
        return;
      }
      if (e.type == DioErrorType.connectionTimeout) {
        debugPrint('check your connection');
        return;
      }

      if (e.type == DioErrorType.receiveTimeout) {
        debugPrint('unable to connect to the server');
        return;
      }

      if (e.type == DioErrorType.unknown) {
        debugPrint('Something went wrong');
        // showNoInternetDialog();
      }
      debugPrint('$e');
      // return APIErrorResponse(statusCode: 500, message: 'Server Not Found.');
    }
  }

  Future getWithoutToken({required String? url}) async {
    final dioInstance = Dio(options);

    try {
      final response = await dioInstance.request(
        url!,
        options: Options(method: 'GET'),
      );
      debugPrint(
          '******************************* G E T *******************************');
      debugPrint("");
      debugPrint('${response.realUri}');
      debugPrint('${response.statusCode}');

      debugPrint('$response');
      debugPrint("");
      debugPrint(
          '******************************* G E T *******************************');
      return response;
    } on DioError catch (e) {
      debugPrint('error full');
      debugPrint('$e');
      if (e.type == DioErrorType.badResponse) {
        debugPrint('catched');
        return;
      }
      if (e.type == DioErrorType.connectionTimeout) {
        debugPrint('check your connection');
        return;
      }

      if (e.type == DioErrorType.receiveTimeout) {
        debugPrint('unable to connect to the server');
        return;
      }

      if (e.type == DioErrorType.unknown) {
        debugPrint('Something went wrong');
        // showNoInternetDialog();
      }
      debugPrint('$e');
      // return APIErrorResponse(statusCode: 500, message: 'Server Not Found.');
    }
  }

  Future post({required String? url, required dynamic data}) async {
    final dioInstance = Dio(options);
    dioInstance.options.headers['Authorization'] = 'Bearer ';

    debugPrint("\n");
    debugPrint(
        '******************************* P O S T D A T A *******************************');
    debugPrint("");
    try {
      final response = await dioInstance.request(
        url!,
        data: json.encode(data),
        options: Options(method: 'POST'),
      );
      debugPrint(
          '******************************* G E T *******************************');
      debugPrint("");
      debugPrint('${response.realUri}');
      debugPrint('${response.statusCode}');

      debugPrint('$response');
      debugPrint("");
      debugPrint(
          '******************************* G E T *******************************');
      debugPrint("\n");
      return response;
    } on DioError catch (e) {
      debugPrint('error full');
      debugPrint('$e');
      if (e.type == DioErrorType.badResponse) {
        debugPrint('catched');
        return;
      }
      if (e.type == DioErrorType.connectionTimeout) {
        debugPrint('check your connection');
        return;
      }

      if (e.type == DioErrorType.receiveTimeout) {
        debugPrint('unable to connect to the server');
        return;
      }

      if (e.type == DioErrorType.unknown) {
        debugPrint('Something went wrong');
        // showNoInternetDialog();
      }
      debugPrint('$e');
      // return APIErrorResponse(statusCode: 500, message: 'Server Not Found.');
    }
  }

  Future postWithoutToken({required String? url, required dynamic data}) async {
    final dioInstance = Dio(options);
    debugPrint(json.encode(data));
    debugPrint("\n");
    debugPrint(
        '******************************* P O S T D A T A *******************************');
    debugPrint("");
    print("herererererrree");

    try {
      final response = await dioInstance.request(
        url!,
        data: json.encode(data),
        options: Options(method: 'POST'),
      );
      print("herererererrree");
      debugPrint(
          '******************************* G E T *******************************');
      debugPrint("");
      debugPrint('${response.realUri}');
      debugPrint('${response.statusCode}');

      debugPrint('$response');
      debugPrint("");
      debugPrint(
          '******************************* G E T *******************************');
      return response;
    } on DioError catch (e) {
      debugPrint('error full');
      debugPrint('$e');

      if (e.type == DioErrorType.badResponse) {
        debugPrint('catched');
        return;
      }
      if (e.type == DioErrorType.connectionTimeout) {
        debugPrint('check your connection');
        return;
      }

      if (e.type == DioErrorType.receiveTimeout) {
        debugPrint('unable to connect to the server');
        return;
      }

      if (e.type == DioErrorType.unknown) {
        debugPrint('Something went wrong');
        // showNoInternetDialog();
      }
      debugPrint('$e');
      // return APIErrorResponse(statusCode: 500, message: 'Server Not Found.');
    }
  }

  Future postFormData({required String? url, required dynamic data}) async {
    final dioInstance = Dio(options);
    dioInstance.options.headers['Authorization'] = 'Bearer ';
    debugPrint(data);
    debugPrint("\n");
    debugPrint(
        '******************************* P O S T D A T A *******************************');
    debugPrint("");

    try {
      final response = await dioInstance.request(
        url!,
        data: data,
        options: Options(method: 'POST'),
      );
      debugPrint("\n");
      debugPrint(
          '******************************* G E T *******************************');
      debugPrint("");
      debugPrint('${response.realUri}');
      debugPrint('${response.statusCode}');

      debugPrint('$response');
      debugPrint("");
      debugPrint(
          '******************************* G E T *******************************');
      debugPrint("\n");
      return response;
    } on DioError catch (error) {
      debugPrint('error full');
      debugPrint('$error');
      rethrow;
      // return APIErrorResponse(statusCode: 500, message: 'Server Not Found.');
    }
  }

  Future put({required String? url, dynamic data}) async {
    final dioInstance = Dio(options);
    dioInstance.options.headers['Authorization'] = 'Bearer ';
    debugPrint(json.encode(data));
    debugPrint("\n");
    debugPrint(
        '******************************* P O S T D A T A *******************************');
    debugPrint("");
    try {
      final response = await dioInstance.request(
        url!,
        data: data != null ? json.encode(data) : null,
        options: Options(method: 'PUT'),
      );
      debugPrint("\n");
      debugPrint(
          '******************************* G E T *******************************');
      debugPrint("");
      debugPrint('${response.realUri}');
      debugPrint('${response.statusCode}');

      debugPrint('$response');
      debugPrint("");
      debugPrint(
          '******************************* G E T *******************************');
      debugPrint("\n");
      return response;
    } on DioError catch (e) {
      debugPrint('error full');
      debugPrint('$e');

      if (e.type == DioErrorType.badResponse) {
        debugPrint('catched');
        return;
      }
      if (e.type == DioErrorType.connectionTimeout) {
        debugPrint('check your connection');
        return;
      }

      if (e.type == DioErrorType.receiveTimeout) {
        debugPrint('unable to connect to the server');
        return;
      }

      if (e.type == DioErrorType.unknown) {
        debugPrint('Something went wrong');
        // showNoInternetDialog();
      }
      debugPrint('$e');

      // return APIErrorResponse(statusCode: 500, message: 'Server Not Found.');
    }
  }

  Future putFormData({required String? url, dynamic data}) async {
    final dioInstance = Dio(options);
    dioInstance.options.headers['Authorization'] = 'Bearer ';
    debugPrint(data?.toString());
    debugPrint("\n");
    debugPrint(
        '******************************* P O S T D A T A *******************************');
    debugPrint("");
    try {
      final response = await dioInstance.request(
        url!,
        data: data != null ? data : null,
        options: Options(method: 'PUT'),
      );
      debugPrint("\n");
      debugPrint(
          '******************************* G E T *******************************');
      debugPrint("");
      debugPrint('${response.realUri}');
      debugPrint('${response.statusCode}');

      debugPrint('$response');
      debugPrint("");
      debugPrint(
          '******************************* G E T *******************************');
      debugPrint("\n");
      return response;
    } on DioError catch (error) {
      debugPrint('error full');
      debugPrint('$error');

      // return APIErrorResponse(statusCode: 500, message: 'Server Not Found.');
    }
  }

  Future delete({required String? url}) async {
    final dioInstance = Dio(options);
    String authheaders = 'Bearer ';
    dioInstance.options.headers['Authorization'] = authheaders;
    try {
      final response = await dioInstance.request(
        url!,
        options: Options(
          method: 'DELETE',
        ),
      );
      debugPrint("\n");
      debugPrint(
          '******************************* G E T *******************************');
      debugPrint("");
      debugPrint('${response.realUri}');
      debugPrint('${response.statusCode}');

      debugPrint('$response');
      debugPrint("");
      debugPrint(
          '******************************* G E T *******************************');
      debugPrint("\n");
      return response;
    } on DioError catch (e) {
      debugPrint('error full');
      debugPrint('$e');
      if (e.type == DioErrorType.badResponse) {
        debugPrint('catched');
        return;
      }
      if (e.type == DioErrorType.connectionTimeout) {
        debugPrint('check your connection');
        return;
      }

      if (e.type == DioErrorType.receiveTimeout) {
        debugPrint('unable to connect to the server');
        return;
      }

      if (e.type == DioErrorType.unknown) {
        debugPrint('Something went wrong');
      }
      debugPrint('$e');
      // return APIErrorResponse(statusCode: 500, message: 'Server Not Found.');
    }
  }
}

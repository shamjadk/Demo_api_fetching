import 'dart:developer';

import 'package:demo_project/core/api_utils.dart';
import 'package:demo_project/view/pages/model/demo_model.dart';
import 'package:dio/dio.dart';

class ApiService {
  static final dio = Dio();

  static Future<List<DemoModel>?> fetchdata() async {
    try {
      final Response response = await dio.get(ApiUtils.apiUrl);
      if (response.statusCode == 200) {
        final results = <DemoModel>[];
        for (final result in response.data) {
          results.add(DemoModel.fromJson(result));
        }
        return results;
      } else {
        log(response.statusCode.toString());
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}

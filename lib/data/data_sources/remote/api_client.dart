import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:journo_blog/data/data_sources/remote/api_constant.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'api_endpoint_urls.dart';

class ApiClient {
  final dio = Dio();

  getTags() async {
    try {
      var response = await dio.get(ApiConstant.mainUrl + ApiEndpointUrls.tags);
      print(response.statusCode);
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data);
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
      } else {

        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
      }
    }
  }
}
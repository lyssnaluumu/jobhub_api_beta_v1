import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:jobhub_api_beta_v1/api/api_handler.dart';
import 'package:jobhub_api_beta_v1/api/models/model.dart';
import 'package:jobhub_api_beta_v1/api/models/request_model.dart';
import 'package:jobhub_api_beta_v1/api/models/responseModels/response_model.dart';

final _dio = Dio(
  BaseOptions(
    baseUrl: dotenv.env['API_BASE_URL'] ?? '',
    connectTimeout: const Duration(milliseconds: 5000),
    receiveTimeout: const Duration(milliseconds: 5000),
  ),
);

class ApiPerformer {
  static Future<Model> performRequest(
      {required RequestModel requestModel}) async {
    try {
      final response = await _dio.get(requestModel.endpoint);

      final apiResponse = ApiResponseHandler.handler(
          (response.statusCode ?? 401) < 400
              ? Status.successfull
              : Status.error);

      final responseModel = apiResponse.constructModel(
          clientType: requestModel.clientType, response: response.data);

      return responseModel;
    } catch (e) {
      throw Exception(e); // <3
    }
  }
}

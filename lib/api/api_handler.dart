import 'package:jobhub_api_beta_v1/api/api_client.dart';
import 'package:jobhub_api_beta_v1/api/models/model.dart';
import 'package:jobhub_api_beta_v1/api/models/responseModels/response_model.dart';

abstract class ApiResponseHandler {
  factory ApiResponseHandler.handler(Status status) {
    switch (status) {
      case Status.successfull:
        return ApiResponse();

      case Status.error:
        return ApiException();
    }
  }

  Model constructModel({ required ClientType clientType, required Map<String, dynamic> response});
}

class ApiResponse implements ApiResponseHandler {
  @override
  Model constructModel({ required ClientType clientType, required Map<String, dynamic> response}) {
    return Model.getModel(clientType: clientType, response: response);
  }
}

class ApiException implements ApiResponseHandler {
  @override
  Model constructModel({ required ClientType clientType, required Map<String, dynamic> response}) {
    return Model.getModel(clientType: ClientType.error, response: response);
  }
}

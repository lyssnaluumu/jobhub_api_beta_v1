import 'package:jobhub_api_beta_v1/api/api_client.dart';
import 'package:jobhub_api_beta_v1/api/models/responseModels/org/errorModel/error_model.dart';
import 'package:jobhub_api_beta_v1/api/models/responseModels/org/singleOrgModel/single_org_model.dart';

abstract class Model {
  factory Model.getModel({ required ClientType clientType, required Map<String, dynamic> response }) {
    switch (clientType) {
      case ClientType.organisation:
        return SingleOrgModel.fromJson(response);

      case ClientType.user:
        return SingleOrgModel.fromJson(response);

      case ClientType.auth:
        return SingleOrgModel.fromJson(response);

      case ClientType.finance:
        return SingleOrgModel.fromJson(response);
      
      case ClientType.error:
        return ErrorModel.fromJson(response);

      default:
        throw Exception('Invalid Client Type');
    }
  }
}
import 'package:jobhub_api_beta_v1/api/api_performer.dart';
import 'package:jobhub_api_beta_v1/api/models/model.dart';
import 'package:jobhub_api_beta_v1/api/models/request_model.dart';

enum ClientType { organisation, user, auth, finance, error }

enum MethodType { get_, post_, put_, delete_ }

abstract class ApiClient {
  // Future<Model> can be replaced with void, yeah... it's incorrect, but still works somehow...
  // As far as i understand void gets casted by ApiPerformer return type, which is Future<Model>

  Future<Model> get(RequestModel params);
  Future<Model> post(RequestModel params);
  Future<Model> put(RequestModel params);
  Future<Model> delete(RequestModel params);

  factory ApiClient.getClient(ClientType type) {
    switch (type) {
      case ClientType.organisation:
        return OrgApiClient();

      case ClientType.user:
        return OrgApiClient();

      case ClientType.auth:
        return OrgApiClient();

      case ClientType.finance:
        return OrgApiClient();

      default:
        return OrgApiClient();
    }
  }
}

class OrgApiClient implements ApiClient {
  @override
  Future<Model> get(RequestModel requestModel) =>
      ApiPerformer.performRequest(requestModel: requestModel);

  @override
  Future<Model> post(RequestModel requestModel) =>
      ApiPerformer.performRequest(requestModel: requestModel);

  @override
  Future<Model> put(RequestModel requestModel) =>
      ApiPerformer.performRequest(requestModel: requestModel);

  @override
  Future<Model> delete(RequestModel requestModel) =>
      ApiPerformer.performRequest(requestModel: requestModel);
}

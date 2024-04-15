import 'package:jobhub_api_beta_v1/api/api_performer.dart';
import 'package:jobhub_api_beta_v1/api/models/request_model.dart';

enum ClientType { organisation, user, auth, finance, error }

enum MethodType { get_, post_, put_, delete_ }

abstract class ApiClient {
  void get(RequestModel params);
  void post(RequestModel params);
  void put(RequestModel params);
  void delete(RequestModel params);

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
  void get(RequestModel requestModel) =>
      ApiPerformer.performRequest(requestModel: requestModel);

  @override
  void post(RequestModel requestModel) =>
      ApiPerformer.performRequest(requestModel: requestModel);

  @override
  void put(RequestModel requestModel) =>
      ApiPerformer.performRequest(requestModel: requestModel);

  @override
  void delete(RequestModel requestModel) =>
      ApiPerformer.performRequest(requestModel: requestModel);
}

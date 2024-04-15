import 'package:jobhub_api_beta_v1/api/api_client.dart';
import 'package:jobhub_api_beta_v1/api/models/request_model.dart';

class ApiMapper {
  static mapRequest({required RequestModel requestModel}) {
    final ApiClient client = ApiClient.getClient(requestModel.clientType);
    
    switch (requestModel.methodType) {
      case (MethodType.get_):
        client.get(requestModel);
      
      case (MethodType.post_):
        client.post(requestModel);
      
      case (MethodType.put_):
        client.put(requestModel);
      
      case (MethodType.delete_):
        client.delete(requestModel);
      
      default:
        throw Exception('Invalid Method Type');
    }
  }
}

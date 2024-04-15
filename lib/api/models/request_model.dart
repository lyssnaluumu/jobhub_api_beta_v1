import 'package:jobhub_api_beta_v1/api/api_client.dart';

class RequestModel {
  RequestModel({ required this.endpoint, required this.clientType, required this.methodType, this.data });

  String endpoint;
  ClientType clientType;
  MethodType methodType;
  Map<String, dynamic>? data;
}
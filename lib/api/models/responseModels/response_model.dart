import 'package:jobhub_api_beta_v1/api/models/model.dart';

enum Status { successfull, error }

class ResponseModel implements Model {
  ResponseModel({ required this.status, required this.data });
  
  Status status;
  Map<dynamic, dynamic> data;
}
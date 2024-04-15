import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:jobhub_api_beta_v1/api/api_client.dart';
import 'package:jobhub_api_beta_v1/api/api_mapper.dart';
import 'package:jobhub_api_beta_v1/api/models/request_model.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    MethodType selectedMethodType = MethodType.get_;

    void configureRequest({ required ClientType cType, required MethodType mType }) {
      switch (cType) {
        case ClientType.organisation:
          final requestModel = RequestModel(
            endpoint: dotenv.env['API_SINGLE_ORG'] ?? '',
            clientType: cType,
            methodType: mType,
          );
          ApiMapper.mapRequest(requestModel: requestModel);

        case ClientType.auth:
          final requestModel = RequestModel(
            endpoint: dotenv.env['API_SINGLE_ORG'] ?? '',
            clientType: cType,
            methodType: mType,
          );
          ApiMapper.mapRequest(requestModel: requestModel);

        case ClientType.finance:
          final requestModel = RequestModel(
            endpoint: dotenv.env['API_SINGLE_ORG'] ?? '',
            clientType: cType,
            methodType: mType,
          );
          ApiMapper.mapRequest(requestModel: requestModel);

        case ClientType.user:
          final requestModel = RequestModel(
            endpoint: dotenv.env['API_SINGLE_ORG'] ?? '',
            clientType: cType,
            methodType: mType,
          );
          ApiMapper.mapRequest(requestModel: requestModel);

        default:
          throw (Exception('Invalid Client Type. Try Correcting Your Input'));
      }
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Get Single Organisation',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 15),
                DropdownMenu(
                  enableSearch: false,
                  helperText: 'Select method',
                  initialSelection: selectedMethodType, // MethodType.get_
                  onSelected: (type) {
                    selectedMethodType = type ?? selectedMethodType;
                  },
                  dropdownMenuEntries: const [
                    DropdownMenuEntry(value: MethodType.get_, label: 'Get'),
                    DropdownMenuEntry(value: MethodType.post_, label: 'Post'),
                    DropdownMenuEntry(value: MethodType.put_, label: 'Put'),
                    DropdownMenuEntry(
                        value: MethodType.delete_, label: 'Delete'),
                  ],
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () => configureRequest(
                      cType: ClientType.organisation,
                      mType: selectedMethodType),
                  child: const Text('Request'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

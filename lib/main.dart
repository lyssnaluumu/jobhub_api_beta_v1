import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:jobhub_api_beta_v1/api/api_client.dart';
import 'package:jobhub_api_beta_v1/api/api_mapper.dart';
import 'package:jobhub_api_beta_v1/api/models/request_model.dart';
import 'package:jobhub_api_beta_v1/api/models/responseModels/organisation/singleOrgModel/single_org_model.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Widget responseModelWidget = const Text('Null');

  MethodType selectedMethodType = MethodType.get_;
  ClientType selectedClientType = ClientType.organisation;

  @override
  Widget build(BuildContext context) {
    void configureRequest({
      required ClientType cType,
      required MethodType mType,
    }) async {
      switch (cType) {
        case ClientType.organisation:
          final requestModel = RequestModel(
            endpoint: dotenv.env['API_SINGLE_ORG'] ?? '',
            clientType: cType,
            methodType: mType,
          );
          final responseModel =
              await ApiMapper.mapRequest(requestModel: requestModel);

          // DEBUG PURPOSES
          if (responseModel is SingleOrgModel) {
            setState(() {
              responseModelWidget = responseModel.toWidget();
            });
          }

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
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Center(
            // DEBUG PURPOSES
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Get Single Organisation',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DropdownMenu(
                          enableSearch: false,
                          helperText: 'Select method',
                          initialSelection:
                              selectedMethodType, // MethodType.get_
                          onSelected: (type) {
                            selectedMethodType = type ?? selectedMethodType;
                          },
                          dropdownMenuEntries: const [
                            DropdownMenuEntry(
                                value: MethodType.get_, label: 'GET'),
                            DropdownMenuEntry(
                                value: MethodType.post_, label: 'POST'),
                            DropdownMenuEntry(
                                value: MethodType.put_, label: 'PUT'),
                            DropdownMenuEntry(
                                value: MethodType.delete_, label: 'DELETE'),
                          ],
                        ),
                        const SizedBox(width: 15),
                        DropdownMenu(
                          enableSearch: false,
                          helperText: 'Select client',
                          initialSelection:
                              selectedClientType, // ClientType.organisation
                          onSelected: (type) {
                            selectedClientType = type ?? selectedClientType;
                          },
                          dropdownMenuEntries: const [
                            DropdownMenuEntry(
                              value: ClientType.auth,
                              label: 'Auth',
                            ),
                            DropdownMenuEntry(
                              value: ClientType.user,
                              label: 'User',
                            ),
                            DropdownMenuEntry(
                              value: ClientType.finance,
                              label: 'Finance',
                            ),
                            DropdownMenuEntry(
                              value: ClientType.organisation,
                              label: 'Organisation',
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () => configureRequest(
                        cType: selectedClientType,
                        mType: selectedMethodType,
                      ),
                      child: const Text('Request'),
                    ),
                    const SizedBox(height: 5),
                    responseModelWidget,
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

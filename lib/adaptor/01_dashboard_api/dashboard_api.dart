import 'dart:convert';

import 'package:coined_one/adaptor/keys/keys.dart';
import 'package:coined_one/core/model/01_model/dashboard_model.dart';

import 'package:http/http.dart' as http;

Future<DashboardModel> getDashboardApiRequest() async {
  var client = http.Client();
  Uri uri = Uri.parse(url);
  DashboardModel? dashboardModel;
  var response;
  try {
    response = await client.get(uri);
  } catch (e) {
    print(e);
  }
  if (response.statusCode == 200) {
    dashboardModel = DashboardModel.fromJson(json.decode(response.body));
  } else {
    print('API FAILED');
  }
  return dashboardModel!;
}

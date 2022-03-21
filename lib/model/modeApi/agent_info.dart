import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modeApi/api_all_agents.dart';
import 'package:wst/model/modeApi/login_model.dart';
import 'package:wst/model/modelJson/model_agent.dart';
import 'package:wst/utils/constant/url.dart';
import 'package:wst/view/other/agentsScreens/agents_main.dart';

Future agentInfo() async {
  homecontroller controller = Get.put(homecontroller());
  var headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': "Bearer $tokenloginresult"
  };
  var request = http.Request(
      'GET',
      Uri.parse(
          'http://212.24.108.54/wsa/api/agent/details/${allAgent[controller.indexAgent]['id']}'));

  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    print(await response.stream.bytesToString());
  } else {
    print(response.reasonPhrase);
  }
}

import 'package:wst/model/modeApi/login_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wst/model/modelJson/compitition.dart';
import 'package:wst/utils/constant/url.dart';

List<Map> MyCompitition = [];
List<Map> foundCompitition = [];
Future allCompititionapi() async {
  var headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': "Bearer $tokenloginresult"
  };
  var request = http.Request('GET', Uri.parse(all_compitition));
  request.body = '''''';
  request.headers.addAll(headers);
  final response = await http.get(Uri.parse(all_compitition));
  comititionModel c = comititionModel.fromJson(jsonDecode(response.body));
  if (response.statusCode == 200) {
    for (var i = 0; i < c.data.length; i++) {
      MyCompitition.add(c.data[i].toJson());
    }
    foundCompitition = MyCompitition;
    print("===========allCompitition=============");
    print(MyCompitition);
    print(MyCompitition.runtimeType);
    print("===========endCompitition=============");
  } else {
    print(response.reasonPhrase);
  }
}

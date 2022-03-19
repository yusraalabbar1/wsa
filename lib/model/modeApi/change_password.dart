import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wst/utils/constant/url.dart';

Future changePasswordModel(useridForPassword, newPassWord) async {
  var headers = {
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyTmFtZSI6ImFobWFkeW91bmlzMTJAZ21haWwuY29tIiwic3ViIjoiYWhtYWR5b3VuaXMxMkBnbWFpbC5jb20iLCJqdGkiOiIyYWRiNGYyYi0wMzI4LTRlZmMtYmQxNi01MDgxODQwYTI3MzgiLCJuYmYiOjE2NDUyNjcwNTAsImV4cCI6MTY0NTI4ODY1MCwiaWF0IjoxNjQ1MjY3MDUwfQ.hzlj8SNBZVx9APeJAM_s_5nuRZ5RUrmLfiX03z9BN2w',
    'Content-Type': 'application/json'
  };
  var request = http.Request('POST', Uri.parse(url_change_password));
  request.body =
      json.encode({"UserId": useridForPassword, "NewPassword": newPassWord});
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    print(await response.stream.bytesToString());
  } else {
    print(response.reasonPhrase);
  }
}

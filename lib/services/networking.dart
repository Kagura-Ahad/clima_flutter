import 'package:http/http.dart' as http;
import 'dart:convert' as cvt;

class NetworkHelper{
  NetworkHelper(this.givenURL);

  final String givenURL;

  Future getData() async {
    Uri url = Uri.parse(givenURL);
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      return cvt.jsonDecode(data);
  }
    else {
      print(response.statusCode);
    }
}
}
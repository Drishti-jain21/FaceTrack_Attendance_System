import 'package:http/http.dart' as http;

fetchData(String url, String filepath) async{
  var request = http.MultipartRequest('POST', Uri.parse(url));
  request.files.add(await http.MultipartFile.fromPath("video", filepath));

  final response = await request.send();
  print(response.statusCode);
  if(response.statusCode == 200){
    final responseBody = await response.stream.bytesToString();
    print(responseBody);
    return responseBody;
  }
  return {};

}
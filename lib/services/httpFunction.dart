import 'package:http/http.dart' as http;

fetchData(int semester, String branch, int section, String url, String filepath) async{
  url += '?sem=$semester&branch=$branch&sec=$section';
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
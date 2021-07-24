import 'package:http/http.dart' as http;
import 'package:zeus/model/photos.dart';

class ApiServices {
  static const String url = "https://jsonplaceholder.typicode.com/comments";
  static Future<List<Comments>> getComments() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final List<Comments> comments = commentsFromJson(response.body);
        return comments;
      } else {
        // ignore: deprecated_member_use
        return List<Comments>();
      }
    } catch (e) {
      // ignore: deprecated_member_use
      return List<Comments>();
    }
  }
}

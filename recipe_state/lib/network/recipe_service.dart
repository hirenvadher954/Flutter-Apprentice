import 'package:http/http.dart';

const String apiKey = 'c2abff4c49de51fd9c71d629bfe529e4';
const String apiId = '9e565094';
const String apiUrl = 'https://api.edamam.com/search';

class RecipeService {
  Future getData(String url) async {
    print('Calling uri: $url');
    final response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      print(response.statusCode);
    }
  }

  Future<dynamic> getRecipes(String query, int from, int to) async {
    final recipeData = await getData(
        '$apiUrl?app_id=$apiId&app_key=$apiKey&q=$query&from=$from&to=$to');
    return recipeData;
  }
}

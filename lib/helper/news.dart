import 'dart:convert';
import 'package:news/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    Uri url = Uri.http("newsapi.org", "/v2/top-headlines",
        {"country": "in", "apiKey": "7b6eb3eb1e794093b0e414a8c434b1f8"});
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      int n = jsonData['articles'].length;
      for (int i = 0; i < n; i++) {
        if (jsonData['articles'][i]["urlToImage"] != null &&
            jsonData['articles'][i]["description"] != null) {
          ArticleModel articleModel = new ArticleModel(
            author: jsonData['articles'][i]['author'],
            title: jsonData['articles'][i]['title'],
            description: jsonData['articles'][i]['description'],
            url: jsonData['articles'][i]['url'],
            urlToImage: jsonData['articles'][i]['urlToImage'],
            content: jsonData['articles'][i]['content'],
          );
          news.add(articleModel);
        }
      }
    }
  }
}


class CategoryNews {
  List<ArticleModel> news = [];

  Future<void> getNews(String categoryName) async {
    Uri url = Uri.http("newsapi.org", "/v2/top-headlines",
        {"country": "in","category": categoryName ,"apiKey": "7b6eb3eb1e794093b0e414a8c434b1f8"});
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      int n = jsonData['articles'].length;
      for (int i = 0; i < n; i++) {
        if (jsonData['articles'][i]["urlToImage"] != null &&
            jsonData['articles'][i]["description"] != null) {
          ArticleModel articleModel = new ArticleModel(
            author: jsonData['articles'][i]['author'],
            title: jsonData['articles'][i]['title'],
            description: jsonData['articles'][i]['description'],
            url: jsonData['articles'][i]['url'],
            urlToImage: jsonData['articles'][i]['urlToImage'],
            content: jsonData['articles'][i]['content'],
          );
          news.add(articleModel);
        }
      }
    }
  }
}

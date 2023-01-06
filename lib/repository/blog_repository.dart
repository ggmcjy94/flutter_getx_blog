

import 'dart:convert';

import 'package:flutter_getx_blog/model/blog.dart';
import 'package:flutter_getx_blog/repository/repository.dart';
import 'package:http/http.dart' as http;
class BlogRepository extends Repository {

  String dataURL = "http://172.30.1.51:8080/api/vi";

  @override
  Future<List<Blog>> getBlogList() async {
    List<Blog> list = [];
    var url = Uri.parse('$dataURL/blogs');
    var response = await http.get(url);
    print('status code : ${response.statusCode}');
    String responseBody = utf8.decode(response.bodyBytes);
    var jsonDecode2 = jsonDecode(responseBody);
    list = List<Blog>
        .from(jsonDecode2
        .map((x) => Blog.fromJson(x)));
    return list;
  }

  @override
  Future<String> deletedTodo(Blog blog) {
    // TODO: implement deletedTodo
    throw UnimplementedError();
  }

  @override
  Future<String> patchCompleted(Blog blog) {
    // TODO: implement patchCompleted
    throw UnimplementedError();
  }

  @override
  Future<String> postTodo(Blog blog) {
    // TODO: implement postTodo
    throw UnimplementedError();
  }

  @override
  Future<String> putCompleted(Blog blog) {
    // TODO: implement putCompleted
    throw UnimplementedError();
  }

}
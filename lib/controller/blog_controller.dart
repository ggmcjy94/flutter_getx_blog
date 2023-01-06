import 'package:flutter_getx_blog/model/blog.dart';
import 'package:flutter_getx_blog/repository/repository.dart';
import 'package:get/get.dart';

class BlogController {

  final Repository _repository;

  BlogController(this._repository);

  //get
  Future<List<Blog>> fetchTodoList() async {
    return _repository.getBlogList();
  }

}
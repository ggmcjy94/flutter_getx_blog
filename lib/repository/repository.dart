import '../model/blog.dart';

abstract class Repository {
  Future<List<Blog>> getBlogList();
  Future<String> patchCompleted(Blog blog);
  Future<String> putCompleted(Blog blog);
  Future<String> deletedTodo(Blog blog);
  Future<String> postTodo(Blog blog);
}
import 'dart:ffi';

class Blog {
  int? id;
  String? title;
  String? content;
  String? createdAt;
  String? updatedAt;

  Blog({this.id, this.title, this.content, this.createdAt, this.updatedAt});

  Blog.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    content = json['content'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['content'] = content;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}
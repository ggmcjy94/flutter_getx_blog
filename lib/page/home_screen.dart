import 'package:flutter/material.dart';
import 'package:flutter_getx_blog/controller/blog_controller.dart';
import 'package:flutter_getx_blog/model/blog.dart';
import 'package:flutter_getx_blog/repository/blog_repository.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

import 'blog_detail.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final blogController = BlogController(BlogRepository());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Blog',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: FutureBuilder<List<Blog>>(
        future: blogController.fetchTodoList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text('Error'),
            );
          }
          return ListView.separated(
              itemBuilder: (context, index) {
                var blog = snapshot.data?[index];
                return InkWell(
                  onTap: () {
                    Get.to(() => const BlogDetail(),arguments: blog?.id,transition: Transition.rightToLeft );
                  },
                  child: Container(
                    height: 100,
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row (
                          children: [
                            Expanded(flex: 1, child: Text('${blog?.id}')),
                            Expanded(flex: 2, child: Text('${blog?.title}')),
                            Expanded(flex: 2,child: Row(
                              children: [
                                Text('작성 일자\n${blog?.createdAt}' ,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),)
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 0.5,
                  height: 0.5,
                );
              },
              itemCount: snapshot.data?.length ?? 0);
        },
      ),
    );
  }
}

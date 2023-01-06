
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class BlogDetail extends StatelessWidget {
  const BlogDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('test'),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
            child: Icon(Icons.arrow_back_outlined)
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(14.0),
        child: Center(
          child: Text('12312312312'),
        ),
      ),
    );
  }
}

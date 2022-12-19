import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                fetchData();
              }, child: const Text("put Data"))
            ],
          ),
        ),
      ),
    );
  }
}
void fetchData() async{
  var dio = Dio();
  var response = await dio.put("https://jsonplaceholder.typicode.com/posts/2",
  data: {'name':'Jarrar','email':"jarrar64@gmail.com"});
  print(response.data);
}
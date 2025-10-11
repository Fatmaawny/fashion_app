import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class SigninPage extends StatelessWidget {
  const SigninPage({super.key});
static String id ="signin";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Center(
        child:IconButton(
          onPressed: ()async {
            http.Response responce = await http.post(Uri.parse("https://fakestoreapi.com/products"),
              body:{
              'title': 'test product',
              'price': '13.5',
              'description': 'lorem ipsum set',
              'image': 'https://i.pravatar.cc',
              'category': 'electronic',
            },
            headers:{
              'Accept':'application/json',
              'Content-Type':'application/x-www-form-urlencoded'
            }
            );
            print(responce.body);
          }, icon:Icon( Icons.add),

      ))
    );
  }
}

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../helper/api.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});
  static String id = "signin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: () {
            Api().post(
              url: 'https://fakestoreapi.com/products',
              body: {
                'title': 'shoes',
                'price': '200',
                'description': 'sneakers women shoes',
                'image':
                    'https://i.pinimg.com/736x/22/a7/b3/22a7b3bb26d758dcf3205cb28dcec070.jpg',
                'category': 'women\'s clothing',
              },
            );
          },
          icon: Icon(Icons.add),
        ),
      ),
    );
  }
}

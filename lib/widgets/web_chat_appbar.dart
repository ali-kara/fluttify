import 'package:flutter/material.dart';
import 'package:fluttify/core/colors.dart';
import 'package:fluttify/core/info.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.75,
      color: webAppBarColor,
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
            ),
            radius: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.01,
          ),
          Text(
            info[0]['name'].toString(),
            style: const TextStyle(fontSize: 18),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.grey),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

//chat.dart
import 'package:chatapp_firedbased/widgets/chat_messages.dart';
import 'package:chatapp_firedbased/widgets/new_message.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterChat'),
        actions: [
          IconButton(
              onPressed: (){
                FirebaseAuth.instance.signOut();
              },
              icon: Icon(Icons.exit_to_app,color: Theme.of(context).colorScheme.primary,)
          )
        ],
      ),
      body: const Column(
        children: const [
          Expanded(child: ChatMessages()),
          NewMessage()
        ],
      ),
    );
  }
}
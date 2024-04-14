import 'package:another_yes_no_flutter_application/presentation/widgets/chat/my_message_bubble.dart';
import 'package:another_yes_no_flutter_application/presentation/widgets/shared/message_field_box.dart';
import 'package:flutter/material.dart';

import '../../widgets/chat/her_message_bubble.dart';
 
// create the ChatScreen Widget as StatelessWidget
// with a Scaffold and AppBar instance.
class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/21073039?v=4',
            ),
          ),
        ),
        title: const Text('Chat Screen'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                 return (index % 2 == 0) 
                 ? HerMessageBubble()
                 : MyMessageBubble();
                },
              ),
             ),
             MessageFieldBox(),            
          ],
        ),
      ),
    );
  }
}

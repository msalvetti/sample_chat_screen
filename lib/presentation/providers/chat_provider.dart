
import 'package:flutter/material.dart';

import '../../domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

// List of messages of the chat, using object Message Class
// the list needs to have 5 mock elements.
  List<Message> messages = [
    Message(
      text: 'Hello, how are you?',
      fromWho: FromWho.me,
    ),
    Message(
      text: 'I am fine, thank you!',
      fromWho: FromWho.hers,
    ),
    Message(
      text: 'What are you doing?',
      fromWho: FromWho.me,
    ),
    Message(
      text: 'I am working on a Flutter project',
      fromWho: FromWho.hers,
    ),
  ];

  Future <void> sendMessage ( String text ) async {
   //TODO: complete this, implements this method.
    messages.add(Message(
      text: text,
      fromWho: FromWho.me,
    ));
    notifyListeners();
  }
  
}
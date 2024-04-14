import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //necesito tomar el input del usuario para mostrar en consola
    final textController = TextEditingController();

    final colors = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        color: colors.secondary,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: textController,
                decoration: InputDecoration(
                  hintText: 'Type a message, end with "??"',
                  hintStyle: TextStyle(
                    color: colors.onSecondary,
                  ),
                  border: InputBorder.none,
                ),
                
                onFieldSubmitted: (value) {
                  print('submitted: $value');
                  textController.clear();
                },
              ),
            ),
            IconButton(
              onPressed: () {
                 print("send message");
                 print('texto from textController: $textController.text');
                 textController.clear();
              },
              icon: Icon(
                Icons.send,
                color: colors.onSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

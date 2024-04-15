
enum FromWho {me, hers}

class Message {
 // aca representamos la entrada de los mensajes, capa de dominio , Dart puro. 
  const Message({
    required this.text,
    this.imageUrl,
    required this.fromWho,
  });

  final String text;
  final String? imageUrl;
  final FromWho fromWho;
}
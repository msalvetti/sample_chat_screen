import 'package:another_yes_no_flutter_application/domain/entities/message.dart';
import 'package:another_yes_no_flutter_application/infraestructure/models/yes_no_model.dart';
import 'package:dio/dio.dart';

class GetYesNoAnswer {

  final Dio _dio = Dio();

  // metodo para obtener la respuesta de si o no por Http
  // utilizando Http Dio
  Future<Message> getYesNoAnswer() async {
    // se hace la peticion a la API
    final response = await _dio.get('https://yesno.wtf/api');
    // se obtiene la respuesta
   final yesNoModel = YesNoModel.fromJsonMap(response.data);
    // se retorna la respuesta
    return yesNoModel.toMessageEntity();
  }
}

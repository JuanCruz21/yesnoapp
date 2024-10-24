import 'package:yesnoapp/domain/entities/message.dart';
import 'package:dio/dio.dart';
import 'package:yesnoapp/infraestructure/models/YesNoModel.dart';

class GetYesNoAnswer {
  final dio = Dio();
  Future<Message> getAnswer() async {
    final response = await dio.get('https://yesno.wtf/api');
    final yesNoModel = YesNoModel.fromJson(response.data);
    return yesNoModel.toMessageEntity();
  }
}

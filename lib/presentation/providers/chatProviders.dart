import 'package:flutter/material.dart';
import 'package:yesnoapp/config/helpers/getyesnoanswer.dart';
import 'package:yesnoapp/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();
  List<Message> message = [];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, fromWho: FromWho.me);
    message.add(newMessage);
    if (text.endsWith('?')) {
      await herReply();
    }
    notifyListeners();
    scrollDown();
  }

  Future<void> herReply() async {
    final herMessage = await getYesNoAnswer.getAnswer();
    message.add(herMessage);
    notifyListeners();
    scrollDown();
  }

  Future<void> scrollDown() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut);
  }
}

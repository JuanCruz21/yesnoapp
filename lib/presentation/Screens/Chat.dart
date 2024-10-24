// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yesnoapp/domain/entities/message.dart';
import 'package:yesnoapp/presentation/providers/chatProviders.dart';
import 'package:yesnoapp/presentation/widgets/InputMessage.dart';
import 'package:yesnoapp/presentation/widgets/mensaje.dart';
import 'package:yesnoapp/presentation/widgets/mensajesElla.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://juanc.ruzdev.online/_astro/Foto-min.XqeEewv2.png'),
          ),
        ),
        title: const Text('YesNoApp'),
        actions: [
          IconButton(
            icon: const Icon(Icons.low_priority),
            onPressed: () {
              
            },
          )
        ],
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();
    return SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Expanded(
                    child: ListView.builder(
                      controller: chatProvider.chatScrollController,
                  itemCount: chatProvider.message.length,
                  itemBuilder: (context, index) {
                    final message = chatProvider.message[index];
                    return (message.fromWho == FromWho.other)
                        ? MessagebubbleHer(message: message)
                        : Messagebubble(message: message.text.toString());
                  },
                )),
                InputMessage(onValue:chatProvider.sendMessage),
              ],
            )));
  }
}

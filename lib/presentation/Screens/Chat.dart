// ignore_for_file: file_names

import 'package:flutter/material.dart';
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
        title: const Text('Prueba'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
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
                        ? const MessagebubbleHer()
                        : const Messagebubble();
                  },
                )),
                const InputMessage()
              ],
            )));
  }
}

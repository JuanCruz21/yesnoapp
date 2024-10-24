// ignore_for_file: file_names

import 'package:flutter/material.dart';

class InputMessage extends StatelessWidget {
  const InputMessage({super.key});

  @override
  Widget build(BuildContext context) {
    // final colors = Theme.of(context).colorScheme;
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40.0),
    );
    final inputDecoration = InputDecoration(
      hintText: 'Enviar mensaje',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
          onPressed: () {
            final textValue = textController.value.text;
            print('valor enviado: $textValue');
            textController.clear();
          },
          icon: const Icon(Icons.send)),
    );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('value: $value');

        textController.clear();
      },
      onChanged: (value) {
        print('value enviando: $value');
        focusNode.requestFocus();
      },
    );
  }
}

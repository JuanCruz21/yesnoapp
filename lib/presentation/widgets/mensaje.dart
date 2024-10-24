import 'package:flutter/material.dart';
// import 'package:yesnoapp/domain/entities/message.dart';

class Messagebubble extends StatelessWidget {
  final String message;
  const Messagebubble({super.key, required this.message});
  
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          // margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(message, textAlign: TextAlign.right, style: const TextStyle(color: Colors.white, fontSize: 20),),
        
        ),
        const SizedBox(height: 5,),
      ],
    );
  }

}

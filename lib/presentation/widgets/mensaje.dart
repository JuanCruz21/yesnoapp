import 'package:flutter/material.dart';

class Messagebubble extends StatelessWidget {
  const Messagebubble({super.key});
  
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
          child: const Text('Hola Mundo', textAlign: TextAlign.right, style: TextStyle(color: Colors.white, fontSize: 20),),
        
        ),
        const SizedBox(height: 5,),
      ],
    );
  }

}

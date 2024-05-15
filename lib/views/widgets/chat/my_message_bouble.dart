import 'package:flutter/material.dart';

class MyMessageBublle extends StatelessWidget {
  const MyMessageBublle({super.key});

  @override
  Widget build(BuildContext context) {
    //Para detectar el tema que tenemos definido en nustra app
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment:CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text('Lorem',style: TextStyle(color: Colors.black),),
          ),
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}
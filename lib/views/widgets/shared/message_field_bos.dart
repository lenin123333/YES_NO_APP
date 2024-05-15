import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final colors = Theme.of(context).colorScheme;
    //Los estilos se van a reutilizar asi de esta manera
    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final inputDecoration = InputDecoration(
        hintText: 'End your message with a "?',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            final textValue = textController.text;
            textController.clear();
          },
        ));

    return TextFormField(
      //para cuando se pica afuera del teclado se cierra para no generar un comportamiento feo
      onTapOutside: (event){
        focusNode.unfocus();
      },
        //Para cuando se precione enter no me desabilite el teclado
        focusNode: focusNode,
        controller: textController,
        decoration: inputDecoration,
        onFieldSubmitted: (value) {
          textController.clear();
          //aqui se recupera el focus y se deja en el mismo luar
          focusNode.requestFocus();
        });
  }
}

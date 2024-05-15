import 'package:flutter/material.dart';

class HerMessageBouble extends StatelessWidget {
  const HerMessageBouble({super.key});

  @override
  Widget build(BuildContext context) {
    //Para detectar el tema que tenemos definido en nustra app
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text('Hola bb',style: TextStyle(color: Colors.black),),
          ),
        ),
        const SizedBox(height: 5,),
        //Todo: imagen
         _ImageBuuble(),

         const SizedBox(height: 10,),
      ],
    );
  }
}

class _ImageBuuble extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //Da la iformacion del tamaño del dispositvo que corre la app
      final size = MediaQuery.of(context).size;
    //Se agrega el ClipRRect para poder redondear la iamgen 
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network('https://yesno.wtf/assets/yes/0-c44a7789d54cbdcad867fb7845ff03ae.gif',
      width:size.width * 0.7,
      height:150,
      fit: BoxFit.cover,
      //para cuando algo se contruye 
      loadingBuilder: (context, child, loadingProgress) {
          
          if(loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: const Text("Merlin está enviando una imagen"),
          );
      },
      ),
    );
  }
}
import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Imagen
          Image(image: AssetImage('assets/landscape.jpg')),

          //Titulo
          Title(),

          //Button Section
          ButtonSection(),

          //Description
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text('La palabra inglesa Landscape (que en español significa paisaje), al parecer, está de moda, apareciendo en revistas y congresos de arquitectura. El “paisaje” es entendido como toda extensión que puede ser apreciada desde un sitio, en la mayoría de los casos, considerada un espectáculo tanto natural como urbano; sin embargo, existen otras definiciones, diferentes perspectivas de cómo entender este concepto que suele ser usado ampliamente en diversos medios comunicativos y de expresión. '),

          ),



          
        ],
      ),
   );
  }
}


class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:30, vertical: 10),
      child: Row(
        
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black45),),
            ],
          ),

          Expanded( child: Container(), ),

          Icon(Icons.star, color: Colors.red,),
          Text(' 41'),
        ],
      ),
    );
  }
}


class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          CustomButton(icon: Icons.call, text: 'Call'),
          CustomButton(icon: Icons.map, text: 'Route'),
          CustomButton(icon: Icons.share, text: 'Share'),
         

          
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text; 
  
  const CustomButton({
    Key? key, 
    required this.icon, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, color: Colors.blue, size:30),
        Text(this.text, style: TextStyle(color: Colors.blue)),
      ],
    );
  }
}
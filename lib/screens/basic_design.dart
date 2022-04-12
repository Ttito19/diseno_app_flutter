import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // Imagen
        Image(
          image: AssetImage('assets/landscape.jpg'),
        ),
        // Título
        Title(),
        //Button Section
        ButtonSection(),
        //Descripción
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
              "Mollit fugiat eiusmod ad officia est mollit dolor do. Eiusmod laboris deserunt irure cillum. Non incididunt voluptate velit ex in. Do cupidatat qui pariatur non deserunt.Eiusmod quis quis non nisi cillum et aliqua quis ex esse esse. Excepteur ea culpa sit culpa eu sunt proident incididunt qui reprehenderit occaecat. Dolor ad anim laboris officia. Consequat cupidatat ullamco duis excepteur duis dolore in ea. Anim deserunt consectetur excepteur velit in ex incididunt. Adipisicing do do Lorem fugiat tempor dolor anim deserunt sint voluptate. Irure proident Lorem do minim enim eu laborum."),
        )
      ],
    ));
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hola mundo amigo bueno",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Hajisdsbdjsbsbdjbs",
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text("41")
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
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call, text: "Call"),
          CustomButton(icon: Icons.map, text: "Route"),
          CustomButton(icon: Icons.share, text: "Shared"),
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
        Icon(
          this.icon,
          color: Colors.blue,
          size: 35,
        ),
        Text(
          this.text,
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}

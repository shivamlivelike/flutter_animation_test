import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Hero(
            tag: "img2",
            child: Image.network(
                "https://images.unsplash.com/photo-1496440737103-cd596325d314?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover),
          ),
          Hero(
            tag: "txt1",
            child: Text("Name1",
                style: TextStyle(fontSize: 30, color: Colors.black)),
          ),
          Hero(
            tag: "txt2",
            child: Text(
              "fskjhsgkfkjsh kjsfhkg jhsk jhskfljh gklsafjhgkljfah kjfa gkljahf lkjghfakjlha kjgh akfjslhg kajfh lkfjsh lkfjsh lkdsfjhglkfsjh klfsdjhg klfsjh kjfsdhg kfsdjhg lkjfsdh klfsjhg kldfjsh kldfsjh kdsjlfgh kljfsdhgkjlfdshg kfjsgkfsjh lkfsjdhklfdjsh lkfdh gkjfdhsk jfhslkj fhskl jfdklj hdfskljfh dsl jsfjfslkj fdklj fdsglkfjshg fghskdf gksgkfsg lkfjs gkfjsh lksfdjhg lkfsjhg lkfsjhglk jdfsg lkfsdjhg lksjfghlkfsjdkjsf hlkfsjg lkfjsh kljfs kljfskhgfls kjh lksfjhg klfsjh klsfj gksjfd",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}

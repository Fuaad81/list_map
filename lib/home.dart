import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List details = [
      {'name' : 'fuaad','mobile' : '1234567890','service' : 'plumber'},
      {'name' : 'shakir','mobile' : '1234567890','service' : 'teacher'},
      {'name' : 'abhi','mobile' : '1234567890','service' : 'fisherman'},
      {'name' : 'siyad','mobile' : '1234567890','service' : 'mechanic'},
      {'name' : 'fahad','mobile' : '1234567890','service' : 'electrician'}
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CircleAvatar(
          backgroundImage: AssetImage('images/man.jpg'),
          radius: 40,
          ),
      ),
      body: ListView.builder(
        itemCount: details.length,
        itemBuilder: (context ,index){
        return Padding(
          padding: const EdgeInsets.only(top: 30,left: 15,right: 15),
          child: Container(
            width: 50,
            height: 130,
            decoration: BoxDecoration(color: const Color.fromARGB(255, 88, 93, 110),borderRadius: BorderRadius.circular(10)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Image.asset('images/man.jpg',width: 80,height: 90,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40,top: 30),
                  child: Column(
                    children: [
                      Text(details[index]['name'],style: const TextStyle(color: Colors.white),),
                      Text(details[index]['mobile'].toString(),style: const TextStyle(color: Colors.white)),
                      Text(details[index]['service'],style: const TextStyle(color: Colors.white))
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
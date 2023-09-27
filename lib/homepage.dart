import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Homepage extends StatefulWidget {
  Homepage({super.key});
  

  @override
  State<Homepage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Homepage> {
  double? BMI;
  
  
  final _weightcontroller = TextEditingController();
  final _heightcontroller = TextEditingController();

 
  void _computeBMI(){
    BMI ;
    print(BMI);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 6, 215, 230),
      appBar: AppBar(
        title: Text(
          'BMI',
        style: GoogleFonts.poppins(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black
        )
      )
      ),
      body: Center(
        child: Column(
          children: [
            Text("Enter Height(in m)",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black
              )
            ),),
            const SizedBox(height: 20,),
            Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(color: Color.fromARGB(255, 10, 84, 97),
              borderRadius: BorderRadius.circular(20),),
              child: TextField(
                controller: _heightcontroller,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(hintText: "Enter height"),                
              )
              ),
            
            Text("Enter weight(in kg)",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black
              )
            ),),
            const SizedBox(height: 20,),
            Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(color: Color.fromARGB(255, 10, 84, 97),
              borderRadius: BorderRadius.circular(20),),
              child: TextField(
                controller: _weightcontroller,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(hintText: "Enter height"),                
              )
              ),
            
            ElevatedButton(onPressed: () =>{_computeBMI()},
            child: Padding(
              padding: const EdgeInsets.only(
                left: 12, right: 12.0, top: 8.0, bottom: 8.0
              ),
              child: Text(
                "Compute",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ) 
                  )
              ),
              )
            ) 
            
            ],
        ),
      )
    );
  }
}
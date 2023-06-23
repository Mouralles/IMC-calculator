// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:imc_calculator/constants/app_constants.dart';
import 'package:imc_calculator/widgets/left_bar.dart';
import 'package:imc_calculator/widgets/ritght_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _alturaController= TextEditingController();
   TextEditingController _pesoController= TextEditingController();
   double _imcResult = 0;
   String _textResult = ""; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:   Text("Calculadora de IMC",
        style: TextStyle(color: Colors.yellow, fontWeight:  FontWeight.w300),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 130,
                  child: TextField(
                    controller: _alturaController,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: Colors.yellow,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Altura",
                      hintStyle: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w200,
                        color: Colors.white.withOpacity(.8)
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 130,
                  child: TextField(
                    controller: _pesoController,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: Colors.yellow
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "peso",
                      hintStyle: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(.8)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            
            GestureDetector(
              onTap: (){
                double _a = double.parse(_alturaController.text);
                double _p = double.parse(_pesoController.text);
                setState(() {
                  _imcResult = _p / (_a * _a);
                  if(_imcResult >25){
                    _textResult = "você está acima do peso";}
                  else if(_imcResult >= 18.5 && _imcResult <= 25){
                    _textResult = "Você está no peso ideal";} 
                  else{
                    _textResult = "Você está abaixo do peso";
                  }
                });
              },
              
              child: Text("Calcular",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.yellow),
              ),
            ),

            SizedBox(height: 50,),

            Text(_imcResult.toStringAsFixed(2), style: TextStyle(fontSize: 90, color: Colors.yellow ),),

            SizedBox(height: 30,),

            Visibility(
              visible: _textResult.isNotEmpty,
              child: Text(_textResult,
               style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400, color: Colors.yellow), )),

            SizedBox(height: 30,),

            // Rows == linhas amarelas:

            Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 25,
          width: 40,
          decoration:  BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            color: Colors.yellow
          ),
        ),
      ],
    ),

    SizedBox(height: 30,),

      Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 25,
          width: 90,
          decoration:  BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            color: Colors.yellow
          ),
        ),
      ],
    ),

    SizedBox(height: 30,),

      Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 25,
          width: 40,
          decoration:  BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            color: Colors.yellow
          ),
        ),
      ],
    ),

SizedBox(height: 30,),

    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: 70,
          decoration:  BoxDecoration(
            borderRadius:  const BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color:  Colors.yellow
          ),
        ),
      ],
    ),

    SizedBox(height: 60,),

     Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: 70,
          decoration:  BoxDecoration(
            borderRadius:  const BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color:  Colors.yellow
          ),
        ),
      ],
     ),
      
          ],
        ),
      ),
    );
  }
}
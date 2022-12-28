import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final _formKey = GlobalKey<FormState>();
    TextEditingController _controller1 = TextEditingController();
    TextEditingController _controller2 = TextEditingController();
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ARSEEN"),
      ),
      body: Form(
        key: _formKey,
      child:Column(
        children: [
          Text("textbox"),
         TextFormField(
          controller: _controller1,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Enter some text';
            }
            return null;
          },
        ),

        TextFormField(
          controller: _controller2,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Enter some text';
            }
            return null;
          },
        ),
        
      
      ElevatedButton(onPressed: () {
        if (_formKey.currentState!.validate()) {

        } 
      }, child: Text("Submit")
      )
          
          
        ],
      ),
      )
       );

  }
}

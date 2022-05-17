import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextFormField(
                validator: (value) {
                  if (value == null || value.length < 3) {
                    return "Enter the fking 3 values.";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  fillColor: Color.fromARGB(137, 202, 235, 126),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 19, 184, 14), width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 72, 221, 201), width: 2.0),
                  ),
                  labelText: 'LOL',
                  hintText: "LLLOOLLL",
                )),
          ),
          TextFormField(
                validator: (value) {
                  if (value == null || value.length < 5) {
                    return "Enter the fking five values.";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  fillColor: Color.fromARGB(137, 202, 235, 126),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 19, 184, 14), width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 72, 221, 201), width: 2.0),
                  ),
                  labelText: 'LOL',
                  hintText: "LLLOOLLL",
                )),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _formKey.currentState?.validate();
                });
              },
              child: Text('Impress me'))
        ]),
      ),
    );
  }
}

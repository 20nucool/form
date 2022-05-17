import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  TextEditingController naam = TextEditingController();
  TextEditingController thegana = TextEditingController();
  TextEditingController num = TextEditingController();
  TextEditingController pass = TextEditingController();

  bool isHidden = true;

  String? numError;
  String? passwordError;

  InputDecoration decor(
          String first, String second, bool? isHidden, String? error) =>
      InputDecoration(
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
        labelText: first,
        hintText: second,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 200, 208, 212),
      appBar: AppBar(
        title: const Text('Baalai Vayena'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: naam,
              decoration: decor('Naam', 'Jalebi Baii', null, null),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: thegana,
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.name,
              cursorColor: Colors.amber,
              maxLength: 20,
              decoration: decor('Thegana', 'Ka basxas bhan', null, null),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: num,
              keyboardType: TextInputType.number,
              cursorColor: Colors.amber,
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
                labelText: 'Number Dey',
                hintText: 'Dey Khurukka',
                errorText: numError,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: pass,
              obscureText: isHidden,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon:
                      Icon(isHidden ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      if (isHidden == false) {
                        isHidden = true;
                      } else {
                        isHidden = false;
                      }
                    });
                  },
                ),
                border: OutlineInputBorder(),
                labelText: "Password",
                hintText: "Lukayera Haan",
                errorText: passwordError,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (pass.text.length >= 8 && num.text.length == 10) {
                  numError = null;
                  passwordError = null;
                } else if (num.text.length != 10 || pass.text.length < 8) {
                  if (num.text.length != 10) {
                    numError = 'Oe tori 10 ota hunxa number.';
                  }
                  if (pass.text.length < 8) {
                    passwordError = '8 ota character ta hanna yr.';
                  }
                }
              });
            },
            child: Text('Click'),
          ),
          // Text(pass.text),
          // Text(naam.text)
        ]),
      ),
    );
  }
}

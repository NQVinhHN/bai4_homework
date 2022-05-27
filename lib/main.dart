import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Calculator';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const AddTwoNumbers(),
      ),
    );
  }
}

class AddTwoNumbers extends StatefulWidget {
  const AddTwoNumbers({Key? key}) : super(key: key);

  @override
  _AddTwoNumbersState createState() => _AddTwoNumbersState();
}

class _AddTwoNumbersState extends State<AddTwoNumbers> {
  TextEditingController num1controller = TextEditingController();
  TextEditingController num2controller = TextEditingController();
  String result = "0";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/calculator.png", width: 200),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 250,
                child: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: num1controller,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Nhập số A',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: num2controller,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Nhập số B',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Kết quả  $result'),
              const SizedBox(
                height: 10,
              ),
              Wrap(
                spacing: 10,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      minimumSize: const Size(90, 40), //////// HERE
                    ),
                    child: const Text("+"),
                    onPressed: () {
                      setState(() {
                        int sum = int.parse(num1controller.text) +
                            int.parse(num2controller.text);
                        result = sum.toString();
                      });
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      minimumSize: const Size(90, 40), //////// HERE
                    ),
                    child: const Text("-"),
                    onPressed: () {
                      setState(() {
                        int sum = int.parse(num1controller.text) -
                            int.parse(num2controller.text);
                        result = sum.toString();
                      });
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      minimumSize: const Size(90, 40), //////// HERE
                    ),
                    child: const Text("x"),
                    onPressed: () {
                      setState(() {
                        int sum = int.parse(num1controller.text) *
                            int.parse(num2controller.text);
                        result = sum.toString();
                      });
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      minimumSize: const Size(90, 40), //////// HERE
                    ),
                    child: const Text(":"),
                    onPressed: () {
                      setState(() {
                        int sum = int.parse(num1controller.text) ~/
                            int.parse(num2controller.text);
                        result = sum.toString();
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TopUpScreen extends StatefulWidget {
  const TopUpScreen({super.key});

  @override
  State<TopUpScreen> createState() => _TopUpScreenState();
}

class _TopUpScreenState extends State<TopUpScreen> {
  bool selectTeleBirr = false;
  bool selectCbeBirr = false;
  bool selectMpesa = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Top Up"),
        backgroundColor: Color.fromARGB(255, 58, 123, 213),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Payment Method",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Wrap(
              spacing: 10,
              children: [
                ChoiceChip(
                  label: Text("Telebirr"),
                  selected: selectTeleBirr,
                  onSelected: (value) {
                    setState(() {
                      selectTeleBirr = value;
                      if (value) {
                        selectCbeBirr = false;
                        selectMpesa = false;
                      }
                    });
                  },
                  selectedColor: Color.fromARGB(255, 58, 123, 213),
                  backgroundColor: Colors.grey[200],
                  labelStyle: TextStyle(
                    color: selectTeleBirr ? Colors.white : Colors.black,
                  ),
                  elevation: 5,
                ),
                ChoiceChip(
                  label: Text("CBEbirr"),
                  selected: selectCbeBirr,
                  onSelected: (value) {
                    setState(() {
                      selectCbeBirr = value;
                      if (value) {
                        selectTeleBirr = false;
                        selectMpesa = false;
                      }
                    });
                  },
                  selectedColor: Color.fromARGB(255, 58, 123, 213),
                  backgroundColor: Colors.grey[200],
                  labelStyle: TextStyle(
                    color: selectCbeBirr ? Colors.white : Colors.black,
                  ),
                  elevation: 5,
                ),
                ChoiceChip(
                  label: Text("Mpesa"),
                  selected: selectMpesa,
                  onSelected: (value) {
                    setState(() {
                      selectMpesa = value;
                      if (value) {
                        selectTeleBirr = false;
                        selectCbeBirr = false;
                      }
                    });
                  },
                  selectedColor: Color.fromARGB(255, 58, 123, 213),
                  backgroundColor: Colors.grey[200],
                  labelStyle: TextStyle(
                    color: selectMpesa ? Colors.white : Colors.black,
                  ),
                  elevation: 5,
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Enter Amount",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter amount',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle top-up action
                },
                child: Text(
                  "Top Up",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 58, 123, 213),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

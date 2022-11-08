import 'package:flutter/material.dart';

class LoadData extends StatefulWidget {
  const LoadData({super.key});

  @override
  State<LoadData> createState() => _LoadDataState();
}

class _LoadDataState extends State<LoadData> {
  String _date = "20-10-2022";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Data"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black87,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "20-10-2022",
                        style: TextStyle(
                          letterSpacing: 1.0,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white12,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "IST",
                        style: TextStyle(
                          letterSpacing: 1.0,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white12,
                    ),
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

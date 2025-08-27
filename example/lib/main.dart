import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

void main() => runApp(new ExampleApplication());

class ExampleApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bluetooth Serial Test'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Flutter Bluetooth Serial Plugin Test'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  try {
                    bool? isEnabled = await FlutterBluetoothSerial.instance.isEnabled;
                    print('Bluetooth enabled: \$isEnabled');
                  } catch (e) {
                    print('Error: \$e');
                  }
                },
                child: Text('Test Bluetooth'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

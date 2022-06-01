// ignore: file_names
import 'dart:async';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class BluetoothConexion {
  FlutterBluetoothSerial bluetooth = FlutterBluetoothSerial.instance;

  List<BluetoothDevice> _listaDeDispositivos = [];

  // ignore: prefer_final_fields
  StreamController<List<BluetoothDevice>> _streamControllerBluetoothDevice =
      StreamController.broadcast();

  late BluetoothDevice dispositivo;

  bool connected = false;
  bool pressed = false;

  void estadoConexionBluetooth() async {
    List<BluetoothDevice> dispositivos = [];
    try {
      dispositivos = await bluetooth.getBondedDevices();
    } catch (e) {
      print(e);
    }
    stateBluetooth(dispositivos);
  }

  void stateBluetooth(dispositivos) {
    bluetooth.onStateChanged().listen((state) {
      if (state == BluetoothState.STATE_OFF) {
        cambiarValoresEstado(true, false);
      } else if (state == BluetoothState.STATE_ON) {
        cambiarValoresEstado(false, false);
      }
    });
    _listaDeDispositivos = dispositivos;
  }

  void cambiarValoresEstado(c, p) {
    connected = c;
    pressed = p;
  }

  void dispose() {
    _streamControllerBluetoothDevice.close();
  }
}

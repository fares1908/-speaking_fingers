import 'dart:typed_data';
import 'package:image/src/image.dart';
import 'package:tflite_flutter/tflite_flutter.dart' as tfl;
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';
import 'package:flutter/services.dart' show rootBundle;

class TFLiteHelper {
  late tfl.Interpreter _interpreter;
  late List<String> _labels;
  late InterpreterOptions _options;

  TFLiteHelper() {
    _options = InterpreterOptions()..threads = 4;
  }

  Future<void> loadModel() async {
    _interpreter = await tfl.Interpreter.fromAsset('assets/tflite.tflite', options: _options);
    _labels = await loadLabels('assets/labels.txt');
  }

  Future<List<double>> runModel(Uint8List input) async {
    TensorImage inputImage = TensorImage(TfLiteType.uint8);
    inputImage.loadImage(input.buffer.asUint8List() as Image);

    TensorBuffer outputBuffer = TensorBuffer.createFixedSize([1, 10], TfLiteType.float32); // Adjust the shape and type as per your model

    _interpreter.run(inputImage.buffer, outputBuffer.buffer);
    return outputBuffer.getDoubleList();
  }

  void close() {
    _interpreter.close();
  }

  Future<List<String>> loadLabels(String filePath) async {
    final String labelsData = await rootBundle.loadString(filePath);
    return labelsData.split('\n');
  }
}

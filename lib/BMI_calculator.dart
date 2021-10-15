import 'package:flutter/material.dart';
import 'dart:math';

class BMICalculator {
  BMICalculator({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getFeedback() {
    if (_bmi >= 25) {
      return 'You have a higher than normal BMI. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a healthy BMI. Good Job!';
    } else {
      return 'You have a lower than normal BMI. You should eat more.';
    }
  }
}

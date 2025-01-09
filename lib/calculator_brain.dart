import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'Obesity';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'A BMI in this range indicates obesity, which is associated with a higher risk of health conditions such as cardiovascular disease, diabetes, and certain cancers. It\'s advisable to seek guidance from a healthcare professional to develop a plan for achieving a healthier weight.';
    } else if (_bmi >= 25) {
      return 'A BMI in this range suggests you may be overweight. This can increase the risk of developing certain health issues, such as heart disease and diabetes. It might be beneficial to adopt healthier eating habits and regular physical activity.';
    } else if (_bmi >= 18.5) {
      return 'A BMI in this range suggests a normal weight. This generally indicates a healthy balance between height and weight, contributing to lower risk of weight-related health problems.';
    } else {
      return 'A BMI in this range indicates that you may be underweight. It\'s important to ensure you\'re getting adequate nutrition and consider consulting with a healthcare provider to assess your health.';
    }
  }
}

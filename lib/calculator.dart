class Calculator {
  double result = 0;

  void add(int a, int b) {
    result = (a + b).toDouble();
  }

  void subtract(int a, int b) {
    result = (a - b).toDouble();
  }

  void multiply(int a, int b) {
    result = (a * b).toDouble();
  }

  void divide(double a, double b) {
    result = (a / b).toDouble();
  }
}

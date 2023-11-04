import 'dart:io';
import 'dart:math' as math;

void main() {
  print('Enter the function power: (cosx or sinx)');
  int? power;
  try {
    power = int.parse(stdin.readLineSync()!);
  } catch (e) {
    print('Power is null or not a number');
    exit(0);
  }
  int numerator = power - 1;
  int denomenator = power;

  double result = numerator / denomenator;

  while (true) {
    if (numerator - 2 == 0) {
      break;
    }
    if ((numerator - 2) / (denomenator - 2) < 0) {
      result *= math.pi / 2;
      break;
    }
    result *= (numerator - 2) / (denomenator - 2);
    numerator -= 2;
    denomenator -= 2;
  }

  print(result);
}

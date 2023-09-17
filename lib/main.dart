import 'dart:io';

// Função para calcular o resultado com base nos números e operação
double calcular(double num1, String operacao, double num2) {
  double resultado;

  // Realiza a operação com base no operador
  if (operacao == '+') {
    resultado = num1 + num2;
  } else if (operacao == '-') {
    resultado = num1 - num2;
  } else if (operacao == '*') {
    resultado = num1 * num2;
  } else if (operacao == '/') {
    if (num2 != 0) {
      resultado = num1 / num2;
    } else {
      print("Não é possível dividir por zero.");
      resultado = double.nan; // Retorna NaN em caso de divisão por zero
    }
  } else {
    print("Operação inválida.");
    resultado = double.nan; // Retorna NaN em caso de operação inválida
  }

  return resultado;
}

void main() {
  // Requisita os números e a operação ao usuário
  stdout.write("Digite o primeiro número: ");
  double primeiroNumero = double.parse(stdin.readLineSync() ?? '0');

  stdout.write("Digite a operação (+, -, *, /): ");
  String operacao = stdin.readLineSync() ?? '+';

  stdout.write("Digite o segundo número: ");
  double segundoNumero = double.parse(stdin.readLineSync() ?? '0');

  // Chama a função para calcular o resultado
  double resultado = calcular(primeiroNumero, operacao, segundoNumero);

  // Exibe o resultado
  print("Resultado: $resultado");
}

import 'dart:io';

main() {
  //Declaração das variáveis da função principal
  final valor_entrada_usuario; //Valor inserido pelo usuário, recebido como uma 'string'
  int valor_entrada; //Conversão do valor recebido em forma de 'string' para inteiro

  //Entrada de dados
  print("Seja bem vindo(a) ao teste técnico 01 do candidato Antônio Claudio!");
  stdout.write("Por gentileza, insira um valor inteiro e positivo: ");
  valor_entrada_usuario = stdin.readLineSync()!;
  valor_entrada = int.parse(valor_entrada_usuario);

  //Chamada da função
  if (valor_entrada < 0) {
    //Verificação se o número inserido é positivo
    print(
        "O sistema foi programado para aceitar somente valores positivos. Tente novamente!");
  } else {
    somatoria(valor_entrada);
  }
}

void somatoria(int x) {
  //Declaração das variáveis da função secundária
  int soma; //Somatória dos valores inferiores ao inserido que são divisíveis por 03 ou 05
  var numeros_selecionados = []; //Vetor com os elementos constituintes da soma
  soma = 0; //Inicialização da variável soma

  //Processamento de dados
  for (int i = 0; i < x; i++ /*i = i + 1*/) {
    //Verificação se o número inserido é divisível por 03 ou 05
    if (i % 3 == 0 || i % 5 == 0) {
      soma = soma + i;
      numeros_selecionados.add(i);
    }
  }

  //Saída de dados
  print("A somatória dos valores inferiores a " +
      x.toString() +
      " que são divisíveis por 03 ou 05 - " +
      numeros_selecionados.toString() +
      " - é: " +
      soma.toString());
  print(
      "Muito obrigado por ter realizado o uso do meu sistema de somas. Espero encontrá-los novamente no próximo teste!");
}

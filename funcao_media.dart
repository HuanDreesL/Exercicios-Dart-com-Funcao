import 'dart:io';

void main() {
  
  List<int> numeros = [];
  stdout.write("DIGITE A QUANTIDADE DE VALORES: ");
  int quant = int.parse(stdin.readLineSync()!);

    for(int i = 1; i <= quant; i++){
    stdout.write("DIGITE $i°: ");
    int valor = int.parse(stdin.readLineSync()!);
    numeros.add(valor);
    }
  
  double media = mediaNumeros(numeros);
  print(media);
}
  double mediaNumeros (List<int> numeros){
 
  int soma = 0;
  double media = 0.0;

  for(int i = 0; i < numeros.length; i++){
    soma = soma + numeros[i];
  }
    media = soma / numeros.length;
    
  return media;
  }


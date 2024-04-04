import 'dart:io';
void main() {

  List<List<int>> matriz = [];
  
  stdout.write("Digite o Tamanho da Matriz: ");
  int tamanho = int.parse(stdin.readLineSync()!);

  for(int i = 0; i < tamanho; i++){
    List<int> linha = [];
    for(int j = 0; j < tamanho; j++){
      stdout.write("Digite os Valores de $i, $j: ");
      int valores = int.parse(stdin.readLineSync()!);
      linha.add(valores);
    }
      matriz.add(linha);
  }
  for(int i = 0; i < tamanho; i++){
    for(int j = 0; j < tamanho; j++){
      stdout.write("${matriz[i][j]} ");
    }
    print("");
  }
  mediaMatriz(matriz);
  maiorNumero(matriz);
  verificarZero(matriz);
  verificarDiagonal(matriz,tamanho);
}
  void mediaMatriz(List<List<int>> matriz){  
    
    int soma = 0;
    int contadorDeItens = 0;

    for(List<int> listaInterna in matriz){
      for(int Item in listaInterna){
        soma += Item;
        contadorDeItens ++; 
      }
    }
    double media = soma / contadorDeItens;
    print("A média dos valores é: $media");
  }
  void maiorNumero(List<List<int>> matriz){

    
    int maior = 0;

    for(List<int> listaInterna in matriz){
      for(int Item in listaInterna){
        if(Item > maior){
          maior = Item;
        }
      }
    }
    print("O Maior Número da Lista é $maior");
  }
  void verificarZero(List<List<int>> matriz){
    bool verificarZero = true;
    for(int i = 0; i < matriz.length; i++){
      for(int j = 0; j < matriz.length; j++){
        if(matriz[i][j] != 0){
          verificarZero = false;
        }
      }
    }
    if(verificarZero){
      print("Matriz é Igual a Zero!");
    }
    else{
      print("Matriz não é Igual a Zero!");
    }
  }
  void verificarDiagonal(List<List<int>> matriz,tamanho){
    bool ehdiagonal = false;

    for (int i = 0; i < tamanho; i++) {
    for (int j = 0; j < tamanho; j++) {
      if (matriz[i][j] == 0) {
        ehdiagonal = true;
      }
      else if(matriz [i][j] != 0){
        ehdiagonal = false;
      }
    }
  }
  if(ehdiagonal){
    print("É DIAGONAL");
  }
  else{
    print("NÃO É DIAGONAL");
  }
  }

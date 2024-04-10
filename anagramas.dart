import 'dart:io';
void main(){

  stdout.write("Escreva a Primeira Palavra: ");
  String palavra1 = stdin.readLineSync()!;
  stdout.write("Escreva a Primeira Palavra: ");
  String palavra2 = stdin.readLineSync()!;

  var mensagem = anagramas(palavra1, palavra2);
  print(mensagem);
}
  bool anagramas(String palavra1, String palavra2){
    bool ehAnagramas = true;
      if(palavra1.length != palavra2.length){
          bool ehAnagramas = false;
      }
      else{
        List<String> listaPalavra1 = palavra1.split('');
        List<String> listaPalavra2 = palavra2.split('');
        listaPalavra1.sort();
        listaPalavra2.sort();
        for(int i = 0; i < listaPalavra1.length; i++){
          if(listaPalavra1[i] != listaPalavra2[i]){
            ehAnagramas = false;
            break;
          }
        }
      }
      if(ehAnagramas){
        print("A palavra é um anagrama");
      }
      else{
        print("A palavra não é um anagrama");
      }
    return ehAnagramas;      
  }
    
    
  

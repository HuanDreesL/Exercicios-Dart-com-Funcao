import 'dart:io';

void main() {
  conversorTemperatura();
}
void conversorTemperatura(){
  print("DIGITE A TEMPERATURA QUE DESEJA CONVERTER: ");
  double temp = double.parse(stdin.readLineSync()!);

  double converter = (temp * 9/5) + 32; 

  print("A TEMPERATURA EM FAHRENHEIT É $converter °F");
}

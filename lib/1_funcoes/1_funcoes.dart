
void main(){
  final valorCalculado = somaInteiros(10, 10);
  print('A soma de dois inteiros é $valorCalculado');

print('');

  final valorCalculado2 = somaInteiros2(15, 15);
  print('A soma de dois inteiros é $valorCalculado2'); 

print('');

  print('A soma de dois inteiros é ${somaInteiros3(25, 25)}'); 

}

int somaInteiros(int numero1, int numero2) {
  print('Executando a soma de inteiros($numero1, $numero2)');
  final soma = numero1 + numero2;
  return soma;
}

int somaInteiros2(int numero3, int numero4) {
  print('Executando a soma de inteiros($numero3, $numero4)');
  return numero3 + numero4;

}

int somaInteiros3(int numero5, int numero6) {
  print('Executando a soma de inteiros($numero5, $numero6)');
  return numero5 + numero6;

}
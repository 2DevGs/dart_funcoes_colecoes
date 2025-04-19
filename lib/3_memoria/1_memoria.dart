
void main(){

  // var lista = ['Gustaf'];
  // print(lista.hashCode);
  // print(lista);
  // funcao(lista);
  // print(lista);

  // var nome = 'Gustaf Nolan';
  // print(nome);
  // print(nome.hashCode);
  // funcao2(nome);
  // print(nome);
  // print(nome.hashCode);


  var list = ['Gustaf'];
  print(list);
  add(list);
  print(list);

}

void funcao2(String nome){
  nome += ' Academia do Flutter';
  print(nome);
  print(nome.hashCode);
}

// Altera a lista sem criar uma nova com a atualização, oque pode causar problemas.
//void funcao(List<String> nomes){
//  nomes.add('Nolan');
//}

void funcao(List<String> nomes){
    print(nomes.hashCode);
  if(nomes.isNotEmpty){
    nomes.clear();
  }
}


// forma correta de modificar uma lista(seja adicionar,remover ou oque for)
List<String> add(List<String> nomes){
  var novoNomes = [...nomes];
  novoNomes.add('Gustaf Nolan');
  print(novoNomes);
  return novoNomes;
}
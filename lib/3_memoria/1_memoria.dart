
void main(){

  // var lista = ['Gustavo'];
  // print(lista.hashCode);
  // print(lista);
  // funcao(lista);
  // print(lista);

  // var nome = 'Gustavo Serrano';
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
//  nomes.add('Dias');
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
  novoNomes.add('Gustavo Canhizares');
  print(novoNomes);
  return novoNomes;
}

void main(){
//esse codigo pode se tronar um Set ou também um map, oque muda é a especificação.
  final example = <int>{};
  final paciente = <String, String>{
      'nome': 'Gustavo Dias',
      'curso': 'Academia do Flutter'
  };
//agora com null safety
//se eu colocar ? nesta posição eu posso colocar como nulo direto.
  Map<String,String>? pacienteNullSafety = null;
//neste caso  o ? esta nesta posição para dizer que posso setar uma CHAVE null la dentro.
  Map<String?,String> pacienteNullSafety2 = {
    null: 'Gustavo',
  };
//o ? esta nesta posição para dizer que posso setar um VALOR null.
  Map<String,String?> pacienteNullSafety3 = {         //variavel
    'nome': null,                                     //chave : valor
  };


//também podemos omitir o tipo fazendo referencia
//com null safety
  var pacienteNullSafety4 = <String,String?>{         //variavel
    'nome': null,                                     //chave : valor
  };

// .putifabsent vai adicionar a chave SE ela ainda nao existir no map.
  var produtos = <String,String>{};
  produtos.putIfAbsent('nome', () => 'Brahmma');
  produtos.putIfAbsent('nome', () => 'Skol');
  print(produtos);
// .update realmente só vai atualizar a sua chave dentro do map
  produtos.update('nome', (value) => 'Sol');
  print(produtos);
// ifAbsente , caso n existe essa chave ele adiciona valor a ela fazendo existir.
  produtos.update('preco', (value) => '10', ifAbsent: () => '10');

//recuperando valor
  print('Produto ${produtos['nome']}');


  produtos.forEach((key, value) {
    print('Chave: $key: $value');
  });
//fazer algum processo asyncrono dentro do map.
  for(var entry in produtos.entries){
    print('Chave: ${entry.key}: ${entry.value}');
  }
//também consegue varrer todas as chaves dentro do map.
  for(var key in produtos.keys){
    print('Chave: $key');
  }
//também consegue varrer todos os values dentro do map.
  for(var value in produtos.values){
    print('Valores: $value');
  }

  var novoMapaProdutos = produtos.map((key, value) {
    return MapEntry(key, value.toUpperCase());
  });
  print(novoMapaProdutos);

  var novoMapaProdutos2 = produtos.map((key, value) {
    return MapEntry(key + '_Nova', value.toUpperCase());
  });
  print(novoMapaProdutos2);

  var mapa = <String, Object> {
    'nome': 'Gustavo Dias',
    'cursos': [{
      'nome': 'Academia do Flutter',
      'descricao': 'Melhor curso de Flutter do Brasil!!!'
    },{
      'nome': 'Arquiteto Flutter',
      'descricao': 'Melhor curso de Flutter do Brasil!!!'
    }]
  };

  print(mapa);

  var mapa2 = <String, dynamic> {
    'nome': 'Gustavo Dias',
    'cursos': [{
      'nome': 'Academia do Flutter',
      'descricao': 'Melhor curso de Flutter do Brasil!!!'
    },{
      'nome': 'Arquiteto Flutter',
      'descricao': 'Melhor curso de Flutter do Brasil!!!'
    }]
  };

  print(mapa2);

}
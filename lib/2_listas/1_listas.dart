void main(){
  var numeros = List.generate(10, (index) => index);

numeros.forEach(printAcademia);

//  Expand
// Array BiDimenssional
  var lista = [
    [1,2],
    [3,4]
  ];
  print(lista[0][1]);

  var listaNova = lista.expand((numeros) => numeros);
  print(listaNova);

  var listaNova2 = lista.expand((numeros) => numeros).toList();
  print(listaNova2);

// any
  final listaBusca = ['Gustavo', 'Canhizares', 'Dias', 'Serrano'];
  
  if (listaBusca.any((nome) => nome == 'Dias')){
    print('Tem Dias no nome!');
  }else {
    print('Não tem Dias no nome!');
  }

//  every

  final listaBusca2 = ['Gustavo', 'Canhizares', 'Dis', 'Serrano'];

    if(listaBusca2.every((nome) => nome.contains('a'))){
      print('Todos os nomes tem a letra A!');
    }else{
      print('Um dos nomes não tem a letra A!');
    }

// .sort
  print('.sort');

  var listaParaOrdenacao = [99, 22, 10, 765, 1, 2, 3, 100, 70, 55, 51, 300];
  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);

  var listaParaOrdenacao2 = ['Gustavo', 'Canhizares', 'Dias', 'Serrano', 'bruno', 'Bradesco', 'Argyreia', 'Nervosa'];
  listaParaOrdenacao2.sort();
  print(listaParaOrdenacao2);


  var listaPacientes = [
    'Gustavo Dias|24',
    'Luana Monteiro|23',
    'Vinicius José|23',
    'Carafernalha|2',
    'Caraferna|08',
    'Aa|8',
  ];

  var novaListaPacientes = [...listaPacientes];

  novaListaPacientes.sort((paciente1, paciente2){
    final pacienteDados1 = paciente1.split(('|'));
    final pacienteDados2 = paciente2.split(('|'));

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);
      if(idadePaciente1 > idadePaciente2){
        return 1;
      }else if(idadePaciente1 == idadePaciente2){
        return 0;
      }else {
        return -1;
      }
  });
  print(listaPacientes);
  print(novaListaPacientes);

// CompareTo
print('.sort com CompareTo');

  var listaPacientes2 = [
    'Gustavo Dias|24',
    'Luana Monteiro|23',
    'Vinicius José|23',
    'Carafernalha|08',
    'Caraferna|08',
    'Aa|2',
  ];
  listaPacientes2.sort((paciente1, paciente2){
    final pacienteDados1 = paciente1.split(('|'));
    final pacienteDados2 = paciente2.split(('|'));

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
print('oi, $listaPacientes2');

//  Pacientes por funcao
  final listaPacientes3 = [
    'Gustavo|24',
    'Motorista|23',
    'Olheiro|23',
    'Taxista|08',
    'Motoqueiro|08',
    'Ana|2',
  ];
  print('Antes');
  print(listaPacientes3);
  funcaoQualquer(listaPacientes3);
  print('Depois');
  print(listaPacientes3);

}

  void printAcademia(int valor){
    print('abc $valor');
  }




  void funcaoQualquer(List<String> pacientes){
    final localPacientes = [...pacientes];

      localPacientes.sort((paciente1, paciente2){
    final pacienteDados1 = paciente1.split(('|'));
    final pacienteDados2 = paciente2.split(('|'));

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print('Tem $localPacientes');
  }
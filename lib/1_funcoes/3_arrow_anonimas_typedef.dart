

void main(){
  // Funcoes Arrow - OK
  // Funcoes Anonimas - ok
  // Typedef - ok


  var nome = '';
  var idade = 1;
  var funcaoQualquer = (){
      print('Chamou a funcao da variavel');
        return '2000';
  };

    print(nome.runtimeType);
    print(idade.runtimeType);
    print(funcaoQualquer.runtimeType);
    print(funcaoQualquer());

  (){
    print('Funcao Anonima');
  }();

  // Nao esta invocando a funcao.
 // somaInteiros;
    // Esta invocando a funcao.
 // somaInteiros();


  print(somaInteiros(10, 10));

    print('Iniciando chamada');
  chamarUmaFuncaoDeUmParametro((nome){
    if(nome.isEmpty) {
      print('Nome veio vazio');
    }else {
      print(nome);
    }
  });
    print('Finalizando chamada');

}

// 3 partes
// 1 tipo de retorno
// 2 Nome
// 3 parametros (normais, nomeados e opcionais)
int somaInteiros(int numero1, int numero2) => numero1 + numero2;
void somInteirosVoid(int numero1, int numero2) => numero1 + numero2;

void chamarUmaFuncaoDeUmParametro(Function(String nome) funcaoQueRecebeONome){
  var calculo = 1+1;
  var nomeCompleto = 'Gustavo Dias';
  print('finalizando a funcao chamarUmaFuncaoDeUmParametro');
  print('invocando funcaoQueRecebeONome');
  funcaoQueRecebeONome(nomeCompleto);
}

void chamarUmaFuncaoDeUmParametro2(FuncaoQueRecebeNome funcaoQueRecebeONome){
  var calculo = 1+1;
  var nomeCompleto = 'Gustavo Dias';
  print('finalizando a funcao chamarUmaFuncaoDeUmParametro');
  print('invocando funcaoQueRecebeONome');
  funcaoQueRecebeONome(nomeCompleto);
}

typedef FuncaoQueRecebeNome = void Function(String nome);

                                    //poe oque quiser
typedef FuncaoQueRecebeNomeComplexo = String Function(String nome, String nomeCompleto, {String? x, String? x2, int? qq});
                                    //void
                                    //int

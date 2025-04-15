
void main(){
  var numerosLista = <int?>[];
  numerosLista.add(1);
  numerosLista.add(2);
  numerosLista.add(3);
  numerosLista.add(null);
  numerosLista.add(1);
  numerosLista.add(2);
  print(numerosLista);


// Voce pode criar uma lista com o Set caso queira q nao repita nenhum numero.
  var numerosSet = <int?>{};
  numerosSet.add(1);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosSet.add(null);
  numerosSet.add(1);
  numerosSet.add(2);
  print(numerosSet);


//  Este modo faz a lista(numerosLista) virar um set.
  print(' .toSet');
  print(numerosLista.toSet());

//também podemos varrer oque encontramos dentro do set.
 numerosSet.forEach(print);


  var numeros1 = {1,2,3,4,5,6};
  var numeros2 = {1,3,4,7};

  print(' .difference');
//quais dos numeros1 nao tem no numeros2
  print(numeros1.difference(numeros2));
//quais dos numeros2 nao tem no numeros1
  print(numeros2.difference(numeros1));

  print(' .union');
//vai respeitar toda a regra do set de nao permitir duplicados mas vai adicionar valores novos.
  print(numeros1.union(numeros2));

  print(' .intersection');
//vai comparar as duas listas e enviar os numeros iguais
  print(numeros1.intersection(numeros2));
  var nomes1 = {'Gustavo', 'Luana', 'Barbara', 'Hugo'};
  var nomes2 = {'Gustavo', 'Vanessa', 'Jeissy', 'Hugo', 'Salamandra'};
  print(nomes1.intersection(nomes2));

  print(' .lookup');
//ele vai buscar e vai enviar apenas o valor definido.
  print(numeros1.lookup(1));
//caso nao encontre, ele voltará nullo.
  print(numeros1.lookup(99));
  print(nomes1.lookup('Hugo'));
//lembrando que o valor definido DEVE ser identico ao da variável, tanto numero quando as letras(maiúsculas ou minúsculas).
  print(nomes1.lookup('hugo'));

//esta é mais uma forma de buscar por índice na lista.
nomes1.toList()[0];

}
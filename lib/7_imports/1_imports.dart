
//posso nomear os imports com o "as (nomedoimport)".
import 'somas/soma.dart' as soma;
import 'somas_nova/soma.dart' as nova_soma;
//o package nunca irá puxar da raiz(pasta BIN) sempre irá puxar da pasta LIB.
//package pode importar até mesmo de fora do projeto,basta a expecificação ser exata.
// import 'package:dart_funcoes_colecoes/7_imports/somas/soma.dart';
void main(){
 var totalDoubles = soma.somaDoubles(10.1, 5.1);
 print('Total de doubles: $totalDoubles');
 var totalInteiros = nova_soma.somaInteiros(10, 5);
 print('Total de doubles: $totalInteiros');

}
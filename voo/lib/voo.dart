import 'passagem.dart';
import 'passageiro.dart';
class Voo{
  String _aviao = "";
  String _destino = "";
  Passageiro passageiro = Passageiro("_cpf", "_nome", "_end", "_tel");
  List<Passageiro> passageiros =[];

  Voo(_aviao, _destino);
  
  String get aviao => _aviao;
  String get destino =>_destino;

  void set aviao(String aviao) => _aviao = aviao;
  void set destino(String destino) => _destino = destino;


  void adicionarPassageiros(Passageiro passageiro){
    this.passageiros.add(passageiro);
    print("Passageiro adicionado ao voo");
  }

  void removerPassageiro(Passageiro passageiro){
    this.passageiros.remove(passageiro);
    print("Passageiro removido do Voo com sucesso!");
  }


  @override
  String toString() {
    // TODO: implement toString
    return "Avião $_aviao para destino $_destino";
  }


  void add(Passagem passagem) {}

}
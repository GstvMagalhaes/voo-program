

import 'package:voo/passageiro.dart';
import 'package:voo/passagem.dart';
import 'package:voo/voo.dart';

void main(List<String> args) {
  Passageiro passageiro = Passageiro("_cpf", "_nome", "_end", "_tel");
  Passagem passagem = Passagem(0, 0, "VAZIO");

  passagem.voo = "BH";
  passagem.numero = 6;
  passagem.poltrona = 2;

  passagem.atribuirPassageiro(passageiro);
  print(passagem);

  passageiro.cpf = "123.456.789-10";
  passageiro.end = "Rua Atleticanos, 20";
  passageiro.nome = "Gustavo";
  passageiro.tel = "31 91235-1234";

  print(passageiro);

  Voo voo = Voo(2, "São Paulo");

  passagem.voo="Brasília";
  passagem.numero = 48;
  passagem.poltrona = 2;

  passagem.cadastraPassagens(passagem);
  print(voo.passageiros);

  //ADICIONAR PASSAGEIRO AO VOO
  voo.adicionarPassageiros(passageiro);

  Passageiro passageiro2 = Passageiro("_cpf", "_nome", "_end", "_tel");
  passageiro2.cpf = "123.546.789-10";
  passageiro2.nome = "Joao";
  passageiro2.end = "Rua Amilcar, 10";
  passageiro2.tel = "31 91253-1234";

  voo.adicionarPassageiros(passageiro2);

  // mostrar lista passageiros de um determinado voo
  print(voo.passageiros);

  //REMOVENDO PASSAGEIRO 2
  voo.removerPassageiro(passageiro2);
  print(voo.passageiros);

  voo.aviao ="AZUL";
  voo.destino ="Belo Horizonte";
  print(voo);

}

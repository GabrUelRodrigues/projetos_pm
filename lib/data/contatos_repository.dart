import 'package:agenda/domain/contato.dart';

List<Contato> loadContatos(){
  return <Contato> [
    Contato(
      nome: "João da Silva",
      imagem: "lib/assets/profile.png",
      email: "joao.da.silva@gmail.com",
      dataNascimento: "01/01/1974",
      idade: 49,
      telefone: "(16) 3384-1234"
    ),
    Contato(
      nome: "Kamily Manuela",
      imagem: "lib/assets/profile.png",
      email: "kamily.manuela@gmail.com",
      dataNascimento: "02/01/2000",
      idade: 23,
      telefone: "(16) 3384-4567"
    ),
    Contato(
      nome: "Gustavo Narciso",
      imagem: "lib/assets/profile.png",
      email: "gustavo.narciso@gmail.com",
      dataNascimento: "02/05/1991",
      idade: 32,
      telefone: "(16) 3394-8910"
    ),
    Contato(
      nome: "Eliseu Bitencourt",
      imagem: "lib/assets/profile.png",
      email: "eliseu.bitencourt@gmail.com",
      dataNascimento: "24/11/1979",
      idade: 36,
      telefone: "(16) 3389-4415"
    ),
  ];
}


void main(List<String> arguments) {
  int idade = 46;
  double peso = 81.5;
  bool dart = true;
  String nome = 'Marcelo Viana';
  String esporte = ' BJJ';
  String frase = 'Meu nome é $nome \n tenho $idade anos, \n peso $peso e \n pratico$esporte . ';

  print(nome + esporte);
  print(frase );


/*------------------------------------Listas---------------------------------------------------*/

  List<String> listanomes = ['Ricarth', 'Natália', 'Alex', 'Andriu', 'Andre'];

  List<dynamic> marcelo = ['Marcelo Viana de Araujo', 46, 80.0, 'BJJ'];

  int quantidade = listanomes.length;

  String fardeListadinamica = 'Meu nome é ${marcelo[0]} tenho ${marcelo[1]} anos, peso ${marcelo[2]} e pratico ${marcelo[3]} . ';

  print(listanomes[0]);
  print(fardeListadinamica);

}

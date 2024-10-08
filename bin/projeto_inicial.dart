void main(List<String> arguments) {
  /**
      atalho pra arrumar o código  CTRL + ALT + L
      atalho pra comentar Ctrl + /
      atalho pra comentar em Bloco Ctrl + Shift + /

      documentaçao https://dart.dev

   **/


  var idade = 46;
  var peso = 81.5;
  var dart = true;
  const String nome = 'Marcelo Viana';
  final String esporte;
  esporte =
      'BJJ'; //agora não será aceita mais mudar pq a variavel foi setada como final

  String frase =
      'Meu nome é $nome \n tenho $idade anos, \n peso $peso e \n pratico $esporte . ';



  print(nome + esporte);
  print(frase);

  ///------------------------------------Listas---------------------------------------------------

  print('-----------Inicio da Lista-----------');

  List<String> listanomes = ['Ricarth', 'Natália', 'Alex', 'Andriu', 'Andre'];

  List<dynamic> marcelo = [nome, idade, peso, esporte];

  int quantidade = listanomes.length;

  String fardeListadinamica =
      'Meu nome é ${marcelo[0]} tenho ${marcelo[1]} anos, peso ${marcelo[2]} e pratico ${marcelo[3]} . ';

  print(listanomes[0]);
  print(fardeListadinamica);

  print(
      '---------Inicio do estudo da lista sugerida pelo site https://codeburst.io/top-10-array-utility-methods-you-should-know-dart-feb2648ee3a2 ---------');

  var fruits = ['banana', 'pineapple', 'watermelon'];
  fruits.forEach((fruit) => print(fruit)); // => banana pineapple watermelon

  var numbers = [1, 3, 2, 5, 4];
  print(numbers.contains(2)); // => true

  numbers.sort((num1, num2) => num1 - num2); // => [1, 2, 3, 4, 5]
  print(numbers);

  var sum = numbers.reduce((curr, next) => curr + next);
  print(sum); // => 15

  const initialValue = 10;
  var sum2 = numbers.fold(initialValue, (curr, next) => curr + next);
  print(sum2); // => 25

  List<Map<String, dynamic>> users = [
    {'name': 'John', 'age': 18},
    {'name': 'Jane', 'age': 21},
    {'name': 'Mary', 'age': 23},
  ];
  var is18AndOver = users.every((user) => user['age'] >= 18);
  print(is18AndOver); // => true

  var hasNamesWithJ = users.every((user) => user['name'].startsWith('J'));
  print(hasNamesWithJ); // => false

  // See #6 for users list
  var over21s = users.where((user) => user['age'] > 21);
  print(over21s.length); // => 1

  var nameJ = users.firstWhere((user) => user['name'].startsWith('J'));
  print(nameJ); // => {name: John, age: 18}

  Map<String, dynamic>? under18s = users.firstWhere(
    (user) => user['age'] < 18,
    orElse: () => {'name': '', 'age': -1}, // ou um outro valor sentinel
  );
  if (under18s['age'] == -1) {
    under18s = null;
  }
  print(under18s); // => null

  print('-----------Inicio do estudo de if/else -----------');

  bool maiorDeIdade;
  print(idade);

  if (idade >= 18) {
    maiorDeIdade = true;
  } else {
    maiorDeIdade = false;
  }

  print(maiorDeIdade);

  print('-----------Inicio do estudo de loop For -----------');

  for (int i = 0; i < 10; i++) {
    print(i);
  }

  print('-----------Inicio do estudo de loop while -----------');

  var energia = 100;
  var voltas = 0;

  while (energia > 0) {
    print('Minha energia esta em $energia %');
    energia = energia - 10;
    voltas = voltas + 1;
    if (energia < 20) {
      break;
    }
  }

  print('Estou sem energia! $energia %');
  print('Consegui dar $voltas voltas');

  energia = 100;
  voltas = 0;

  do {
    print('Minha energia esta em $energia %');
    energia = energia - 10;
    voltas = voltas + 1;
    if (energia < 20) {
      break;
    }
  } while (energia > 0);

  print('Estou sem energia! $energia % ');
  print('Consegui dar $voltas voltas');

  // Leia sobre break e continue no link https://www.geeksforgeeks.org/dart-loop-control-statements-break-and-continue/ --------------
}

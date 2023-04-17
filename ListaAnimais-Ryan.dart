//Univale Prog e Sist Computacionais 2 Marcelo Silva
//Code 7 Trabalho Lista de Animais

//********TRABALHO VALENDO 15 PONTOS********

//********ADICIONE A CLASSE DE ANIMAIS OS ATRIBUTOS********
//paisOrigem do tipo String
//descricao do tipo String
//altura do tipo double

//********ADICIONE OS ATRIBUTOS AOS OBJETOS JÁ CRIADOS 'Leão, Girafa, Elefante'********

//********CRIE MAIS 4 ANIMAIS********

//********EXIBA AS NOVAS INFOMAÇÕES NA LISTA DE ANIMAIS********

//********EXIBA AS NOVAS INFORMAÇÕES NA PÁGINA DE DETALHES********



import 'package:flutter/material.dart';

//MAIN; ESSE METODO É O PRIMEIRO MÉTODO INVOCADO QUANDO O APLICATIVO É CONSTRUÍDO
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //PRIMEIRA PAGINA EXIBIDA QUANDO O APLICATIVO É CRIADO
      home: const Home(),
    );
  }
}

//CLASSE QUE MODELA NOSSA REGRA DE NEGÓCIO, ESTA ESTRUTURA DE DADOS SERVE PARA GUARDAR AS INFORMAÇÕES DE UM ANIMAL
class Animal {
  String nome;
  String habilidade;
  double peso;
  double altura;
  String origem;
  String sobre;
  String avatarUrl;
  Animal(
      {required this.nome,
      required this.habilidade,
      required this.peso,
      required this.altura,
      required this.origem,
      required this.sobre,
      required this.avatarUrl});
}

//CRIA NOSSA PÁGINA PRINCIPAL QUE É UM STATEFULL WIDGET
class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //LISTA DE OBJETOS DA CLASSE ANIMAL, ESTA ESTRUTURA DE DADOS É UM ARRAY E SERVE PARA QUE POSSAMOS ARMAZENAR VÁRIOS ANIMAIS E EXIBIR POSTERIORMENTE EM UMA LISTA
  List<Animal> animais = [
    Animal(
        nome: 'Leão',
        habilidade: 'Força',
        peso: 190,
        altura: 2.00,
        sobre: 'O leão é um grande felino que é encontrado principalmente na África subsaariana, embora também possa ser encontrado em algumas partes da Ásia. Eles são conhecidos por suas juba, que é uma característica distintiva dos machos, e são considerados os reis da selva devido à sua força e coragem. Os leões são animais sociais que vivem em grupos chamados de "coalizões" ou "prides", geralmente liderados por um macho dominante. Eles são predadores habilidosos e caçam principalmente durante a noite, alimentando-se de uma variedade de presas, incluindo antílopes, zebras e búfalos. No entanto, a população de leões está em declínio devido à perda de habitat e à caça ilegal, tornando-os uma espécie vulnerável.',
        origem: 'África',
        avatarUrl:
            'https://cdn-icons-png.flaticon.com/512/5150/5150875.png'),
    Animal(
        nome: 'Girafa',
        habilidade: 'Altura máxima',
        peso: 1300,
        altura: 2.00,
        sobre: 'A girafa é um mamífero alto e elegante que é encontrado em várias partes da África. É a mais alta espécie de mamíferos terrestres, com pescoço longo e pernas esguias que lhes permitem alcançar as folhas das árvores, seu principal alimento. As girafas têm manchas marrons em sua pelagem amarela e uma língua preênsil que pode se estender até 45 cm para ajudá-las a pegar as folhas das árvores. As girafas são animais solitários ou vivem em pequenos grupos e, apesar de serem animais pacíficos, os machos às vezes lutam usando seus pescoços como armas. Infelizmente, as girafas estão ameaçadas devido à perda de habitat e à caça ilegal, com sua população tendo diminuído significativamente nos últimos anos. Por causa disso, as girafas são agora consideradas uma espécie vulnerável.',
        origem: 'África',
        avatarUrl:
            'https://cdn-icons-png.flaticon.com/512/5150/5150864.png'),
    Animal(
        nome: 'Elefante',
        habilidade: 'Peso Máximo',
        peso: 5000,
        altura: 2.00,
        sobre: 'O elefante é um dos animais mais icônicos e reconhecidos do mundo, com sua silhueta inconfundível, grandes orelhas e trombas distintivas. Eles são encontrados em várias partes da África e da Ásia, e são conhecidos por serem os maiores animais terrestres do mundo. Os elefantes são animais sociais que vivem em grupos liderados por fêmeas adultas, com os machos geralmente vivendo sozinhos ou em grupos separados. Sua tromba é uma característica distintiva que eles usam para pegar comida, beber água e se comunicar uns com os outros. Além disso, eles são animais altamente inteligentes e emocionais, com a capacidade de demonstrar empatia e memória de longo prazo. Infelizmente, a população de elefantes em todo o mundo está ameaçada devido à caça ilegal de marfim e à perda de habitat, o que torna esses majestosos animais em risco de extinção.',
        origem: 'África',
        avatarUrl:
            'https://cdn-icons-png.flaticon.com/512/5150/5150869.png'),
    Animal(
        nome: 'Rinoceronte',
        habilidade: 'Força',
        peso: 2700,
        altura: 3.80,
        sobre: 'O rinoceronte é um animal herbívoro de grande porte e que habita principalmente regiões da África e da Ásia. Ele é conhecido por sua pele espessa e seus chifres longos, os quais são utilizados em disputas territoriais e como defesa contra predadores. Infelizmente, todas as espécies de rinocerontes encontram-se ameaçadas de extinção, principalmente devido à caça furtiva, que tem como objetivo o comércio ilegal de seus chifres. Esforços estão sendo feitos para proteger esses animais e garantir sua sobrevivência, mas a situação continua crítica. Além disso, o rinoceronte é um animal fascinante e muito importante para os ecossistemas onde vive, ajudando a manter o equilíbrio natural das regiões em que habita.',
        origem: 'África e Ásia',
        avatarUrl:
            'https://cdn-icons-png.flaticon.com/512/5150/5150881.png'),
    Animal(
        nome: 'Onça Pintada',
        habilidade: 'Agilidade',
        peso: 90,
        altura: 1.70,
        sobre: 'A onça-pintada é um felino poderoso e imponente, encontrado nas regiões da América Central e do Sul. Com suas manchas únicas e inconfundíveis, ela é considerada um dos animais mais emblemáticos e majestosos da fauna latino-americana. As onças-pintadas são animais solitários e territoriais, que podem ser encontrados em uma ampla variedade de habitats, incluindo florestas tropicais, savanas e pântanos. Elas são excelentes caçadoras, capazes de perseguir e matar presas maiores do que elas mesmas, graças à sua força, agilidade e habilidades de camuflagem. Infelizmente, a população de onças-pintadas em todo o mundo está ameaçada devido à caça ilegal e à perda de habitat, tornando a conservação desses majestosos animais uma preocupação global. A onça-pintada é um animal importante na cultura e mitologia de muitos povos indígenas da América Latina e é um símbolo da diversidade biológica dessa região.',
        origem: 'América do Sul e América Central',
        avatarUrl:
            'https://cdn-icons-png.flaticon.com/512/5150/5150885.png'),
    Animal(
        nome: 'Zebra',
        habilidade: 'Memória',
        peso: 350,
        altura: 1.40,
        sobre: 'A zebra é um animal que pertence à família dos equídeos, originário da África. Possui uma pelagem listrada característica, que ajuda a camuflar-se em meio à vegetação alta e confunde predadores, como leões e hienas. As zebras geralmente vivem em grandes grupos e alimentam-se de gramíneas. São animais bastante ágeis e podem correr a velocidades de até 65 km/h para escapar de ameaças.',
        origem: 'África',
        avatarUrl:
            'https://cdn-icons-png.flaticon.com/128/5150/5150879.png'),
    Animal(
        nome: 'Urso',
        habilidade: 'Sobrevivência',
        peso: 600,
        altura: 2.50,
        sobre: 'Os ursos são mamíferos carnívoros que pertencem à família Ursidae. São animais grandes e poderosos, com corpos musculosos, patas fortes e garras afiadas. Eles são encontrados em muitas partes do mundo e são adaptáveis a diferentes ambientes, desde regiões árticas até florestas tropicais. Os ursos são animais solitários e territorialistas, mas podem se reunir em grupos durante a época de acasalamento ou em áreas com abundância de alimento. Eles são excelentes nadadores e podem correr em alta velocidade, mesmo em terrenos acidentados. Os ursos são animais inteligentes, com uma excelente capacidade de aprendizado e memória, o que lhes permite resolver problemas complexos para obter alimento e se proteger de predadores. Infelizmente, muitas espécies de ursos estão ameaçadas de extinção devido à perda de habitat, caça e comércio ilegal de partes do corpo, como patas e vesícula biliar.',
        origem: 'América do Norte, América do Sul, Europa e Ásia',
        avatarUrl:
            'https://cdn-icons-png.flaticon.com/512/5150/5150883.png'),
  ];
  @override
  Widget build(BuildContext context) {
    //RETORNA UM SCAFFOLD QUE CONSTRÓI UMA ESTRUTURA BÁSICA DA TELA DE UM APLICATIVO
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Animais'),
      ),
      //A COLUNA ORGANIZA TODOS OS ELEMENTOS FILHOS EM VERTICAL
      body: Column(
        //ELEMENTOS FILHOS DA COLUNA
        children: [
          //O EXPANDED GARANTE QUE A LISTA TENHA UM TAMANHO DINÂMICO
          Expanded(
            //RETORNA UMA LISTA DE ELEMENTOS BASEADA EM UMA LISTA DE OBJETOS, NO CASO UMA LISTA DE ANIMAIS
            child: ListView.builder(
              itemCount: animais.length,
              itemBuilder: (context, index) {
                //ALINHA OS ELEMENTOS NA HORIZONTAL
                return Row(
                  //ELEMENTOS FILHOS DA LINHA
                  children: [
                    //ESSE ELEMENTO EXIBE UMA IMAGEM DA WEB COM TAMANHO PRE DEFINIDO DE 100X100
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.network(animais[index].avatarUrl),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //EXIBE UMA SAÍDA DE TEXTO CONCATENANDO O LABEL 'NOME:'+ A INFORMAÇÃO CONTIDA NO ATRIBUTO DO RESPECTIVO OBJETO
                        Text(' Nome: ${animais[index].nome}'),
                        Text(' Peso Médio: ${animais[index].peso.toString()} Kg'),
                        Text(' Altura Média: ${animais[index].altura.toString()} M'),
                        Text(' Habilidade: ${animais[index].habilidade}'),
                        Text(' Origem: ${animais[index].origem}'),
                      ],
                    ),
                    //EXIBE UMA BOTÃO COM UMA AÇÃO QUE ABRE UMA NOVA TELA DO APLICATIVO
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          //ESSE METODO ABRE A TELA DE DETALHE DE ANIMAIS
                          MaterialPageRoute(
                              builder: (context) =>
                                  AnimalDetalhe(animal: animais[index])),
                        );
                      },
                      child: const Text('+ Detalhes'),
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

//ESSA CLASSE STATELESS WIDGET CRIA UMA TELA QUE MOSTRA UMA EXIBIÇÃO DETALHADA DE UM ANIMAL
class AnimalDetalhe extends StatelessWidget {
  //NO METODO CONSTRUTOR DA TELA INFORMAMOS UM PARÂMETRO AONDE PASSAMOS UM OBJETO DA CLASSE ANIMAL QUE SERÁ EXIBIDO COM DETALHES
  const AnimalDetalhe({super.key, this.animal});
  final Animal? animal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhe do ${animal!.nome}'),
      ),
      //ESSE WIDGET CENTRALIZA O COMPONENTE FILHO, NO CASO A COLUNA
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Image.network(animal!.avatarUrl),
          ),
          Text(' Nome: ${animal!.nome}'),
          Text(' Peso Médio: ${animal!.peso.toString()} Kg'),
          Text(' Altura Média: ${animal!.peso.toString()} M'),
          Text(' Habilidade: ${animal!.habilidade}'),
          Text(' Origem: ${animal!.origem}'),
          Text(animal!.sobre),
        ],
      )),
    );
  }
}

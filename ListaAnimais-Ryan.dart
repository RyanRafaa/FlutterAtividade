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
            'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITERUSEhMWFRIXFRUVFhgVFxUVFhUVGBUWFxYYGBYYHSggGBolGxUVITEiJSkrLi4uGR8zODMtNygtLisBCgoKDg0OGhAQGy0lICUtLS0tLS0tLS0tLTAtLS0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAOYA2wMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAABAUDBgcCAf/EAEEQAAEDAQQIAwUFBgUFAAAAAAEAAgMRBBIhMQUGQVFhcYGRIqGxEzJCUsEjYnLR8AeSssLh8TRDU4KiFBUzY3P/xAAbAQEAAgMBAQAAAAAAAAAAAAAAAwUCBAYBB//EADURAAIBAgMFBgUDBAMAAAAAAAABAgMRBCExBRJBUXFhkaHB0eETIoGx8DJCUgZywvEUFSP/2gAMAwEAAhEDEQA/AO4oiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIsM8zWNLnuDWjMuIAHUrW9Ia6QsqImmU7/cb3Iqey9SuRVa9OkrzdvzkbUvhXNLbrZan5PEY3NA/iNT2oqe0Wl7/feX/icXepWXw2V89rU0/ki34er8DrMukYW+9LGOb2j1Kw/97s3+vH+8PzXJgEXvwzX/AO3nwgu8643S1nOU0Z/3t/NSo5GuxaQRwIPouMr7G4g1BIO8YHuE+GZLa8uMPH2O0ouVWTWG1R5TOI3OF4f8sVf2DXnZNHT7zD9HfmvHBo2qe06E9brr7eZuyKDo7SkM4rE8O3jJw5tOIU5YFhGSkrp3QREQ9CIiAIiIAiIgCIiAIiIAiLFPM1jS55DWgVJOQCAyrVtOa3xxVZDSSTIn4WnmPePAd1Q6xa0PnrHFVkOR2Ofz3N4d9y1xSRhzKXFbT/bR7/T18CVpDSMszr0ry47B8I5NyCioikKdtt3eoREQ8CLKIHnYO/5Ly+Mj3gP1zUarU3LdUlfqiaWGrRjvyhJLm4u3fax4RezGa0oK8V8c2mayU4vJPt9+hhKnOKbaeTto9eV9LnlERZGB6jcWkOaSHDIgkEciMltWhtcnso20C+35x7w5jJ3rzWpovGrktGvUou8Hb7PqjsVltLJGh7HBzTkR+sDwUhcj0TpWWzvvRnD4mn3XDjx4rpGhdMR2ll5mDh7zTm0/UcVFKNjoMJjo1/leUuXp6aotERFibwREQBERAEREAREQGKaUNaXOIDQCSTkAMyubay6edaXXW1ELT4Rtcd7t3AbFP10057Rxs8Z+zafGR8Txs5D15LVFLCPFlDtDG77dKGnHt7On36akRQbVazUtbhTb8XdY1q0aUd6RqYPB1cXU3KfVt6JE5FU+1eTmSeZVxYInNH2hHAGpIWi9p01rF+Bcv+m61laa7cn+Pw6nqBtTiMOakmJoFaV/eX2SXDwnLYsAtF7mM/6hVmIx9Sq7xvHo37F3gtjUcPFqajN83BX8WyS2RtOC9VB6qsE4vZ4UWRk4AvfrctJ31ZbqCSstPzIn0wOyqxiBv6Kq3W4nbRv62r1Fbm78eRKmjUqwXytro/z07CCphKFR3qQT4K6T7cuCu9bWbJrrIdhPX+qwPFN/1WZs4cMiea8vgqDdcAeIyVphdoq3/tLP+3zXHuOb2hsOTmv+LTsnq97yenfLsRhRVlqEjHULq8Q6v9l8jtbxtrz8XktiO0oN5xf3Nep/TlZL5ZpvlZrxz8i0UiwWx8LxJGaOHYjaCNoUaJ94A7wvqsE01c59qUJWeTT7mjq2g9LstMd9uDhg5u1p+oOwq0XItEaRfZ5RIzk4bHN2g/rNdUsVqbLG2Rhq1wqPyPEZKKSsdHgcX8eNpfqWvb2+pJREWJvBERAEREAVFrZpb2EPhP2j6tZw+Z3QHuQr1cr1m0l7e0PcD4G+FnIHE9TU9llFXZpY/EfBpZavJeb+i8bFSiIpjmQqu2to88fF5q0WCeyF7m020B5Vz6YrTx1NypXXDP1LjYeIjRxSUnZSVvrk16fUl6GsTGsEryaurQUpQVpXjXepU0sPEFSpLRdAaBQAAVLhgBhuzVHbZ4zk7HeAad6LnJfMzuYLmZJ5aYDHcVCjhfK7wDKtScAK7z9F9sNndIc6sGZp5c1eRsoA1ooBsCZQ01M27kKPRTaeKRxP3AAPPH0WUaCBGErqHeAT3UoyRg3S8B26hNDuJ2KVC6gIOzzTekY35FM7Q0WV95I3XadqKLNo17ASzxt2kYOA4t/KquJJGNpffQnGlCcOK9kEYg8iMj1TelxC7Chsto6j0VtAAQodvsRxeweLNw37yOK+aPtGA9F5NJ5ozWeRG0qyMHBrmu5ANd5+irltL2Ne2hFQVSP0eWyXfhzrvH5qajeo9xakFarCjF1KjskSoG0aBwavaIupS3VZHzOc3OTm9W2+8LatRtLXJPYOPgeas4O3dR5gb1qq+hxBBBoQQQdxGRRq5nQqulUU1w8fz3O0oq7QekBPAyXaRRw3OGDvP6KxUB1kZKSUlowiIhkEREBUazW72NmkcDRxF1v4nYVHIVPRcsW6ftEtX/iiH3nH+Fv8y0tTQ0Oc2nU3q27/ABVvzwCIiyK8K10bB4b20+QVUrqAgNx+FtetVXbTm1SUVxfglcvf6foxniJTa/Ssury+1/8Adit0hZ6nM8iFU2oXRQY7FdTVNScBu/oqe0EXmnIBw7VVDTd5WO4ehsNnszGNEYzAxptO0qHaNIhoIjNXb6C7TbSuamzHFwORBBpnQ4YLW2atPbNJcJkhe9sjKzPZJG5vwOJDi+Pr0Kyhuu7kyCo5JLdVyw0RZfaPLnHBpBPEk1x7LYAFrOpskhviUXX3pQ4YkC7M5ooTmAMAVs69q3UrM8pu6uVWmrGC32gzaKHiK/Sqh2DSF0XHk3KYUGINfTNWemnUhPEgedfotOg0PaJ7Kx90MfLEGFzpnXWMON8xXcZabj12LOCTj8z4/n5qYzk4v5Vc3OK5QOrUHIjL+hVJpKL2c3hwDhfHCuY7g91ZWGyshiETHPcMKue4uJNACanfSqhaaxkiH3PU0+iiVrtLQni3lcy2WfaOqlWxt4XhmM/oVCZGBUjqrOCG8wcqL3DVnSqqa08uPgQY/DLEUJU3xWXXVeJUovrm0wOYXxdafNOoREQG4/s9ttHSQk4EB7eYoHeRb2W8rk2r1q9naYn7LwaeR8J8jXousqKaszodl1N6ju/xdvP2CIiwLIIiIDmmu0161vHyNY3/AI3v5lQKy1kdW1zH79O2H0Vap1ocliJb1ab7X92ERF6QkvR9nvGpyHmrSRhpQZk4rBYCLgAz29SpL30BO4UC5zGVXUqu+iyX526nebKw0aGFju5uXzPry+mn+yotJxpuVLaG1B7q5tVak7Sq+1MutFM1o03Zl1wLeOS81rvmaD3AqpVlj+LsvOq9JLPdPvMc5vT3h0xI6KXdphkspR3XcivwKe3S0tLLufhB6nI9CrhRbNod7ZJJ5iyOMeK+97A1odlexq00pnvVlDZHPAdEWysOT43New/7gaLOUXZZEaqRvqUGmJftI2H3Kgnj4qenqrWeOo4qFpWyiU3InMkmZiWxvY9wGAN4NPhphmpdlrcbe966K86LyUbJHsZJvIgqp0mazH7rWt60qfMrcLLA2he6lMT2zK0aOYvkc/IOeXU5mq8jCyuSJ3ZaWV9acRRWMFQKDpz4qribdy31VvZsQVFF2d0ZSjfLmVMsl4l1KVWNe5Biea8LsopJJLQ+WzcpSblrfPqERF6Ygndmux2SW/Gx/wAzWu7gFccXWNXn1ssJ+4B2w+ijqFvsh/PNdiLJERRl4EREByXWD/Fzf/R38RVerXWhlLZMONf3mh31VUp1ochWyqS6v7sIiL0jLLRRwd0+qnlgOG2hp6VVPo8/aDr6K4jGNeFFz+0IbtdvnZ+XkdtsSrv4JR/i2v8AL/Iq7Q3fsw6qNamOFAQ3f4ro9SD2VvaGAeIZk1rwzw3KqliBJe4tpsqT6Nx8lXJWlmXsZXRn1XtTWSlpuNEmAuufi4YjB1RtIz2raXWYX7wOPKuPQ18lobpWA1vHw4+GKOldlHPqfJbronSLZ4hIAa5OHhqHDP4eR6rZVmQyTWaNa121EOkZBJBMYZrrWyNeHeyl9nX2biW5OAcRWh4UxrpU+rlusLm2eYXnzG7EYXOc2c4D2ZOGIJGDgMDXIEjuNjZeNbuR2uPA1DRhmBnxVNrdpOzRWrRzZpA15tLnNB3GzzRAnc32kkYrvPA03KVadlHVGhO0JNo5zo39klsLva2u0iNhqHMgL3yFjhRzBgGtBFRtFN66a6zgtAAuNFA0U90DADE5Uw6K5tsVaHxCnykjDPZniAq+9tIPUtP0UVarKp+oloRtmtSp1htDI4Cyoq/wAEkVFPFkDs9VqzITTwtjywoa16PcSpWlNKRzSkit1lWt8ETwccXCoBFee5Y4HA4AtO6oLD293zWrOXI3qayM0WBo4UqNoU6NlKFvZQG193EcNlVNsbqrXRJIg24C+abfqo6m6TAwI2j0/uoS6zCy3qMX2fbI+bbRp7mKqRXO/fmvBhERTmmF1XVf/CQ/h/mK5UutaDjpZoR/62+YBWFQtdkr/wBJPs8/YsERFEXwREQHOdfILtqDtj2NPUVafIBa2t9/aDZKxMlA9wlp/C+n1aO60JTQ0OYx8NzES7c+/wB7hERZGmZIH0dXcf7q8vZjutfVlo+YlxJ3A+VPqqzaVDfj8TkvNerOg2DjFTn8B/uat3O/2iZ7Y2uGwbtgUGaAGtTdbs2k8htx24DirUuG3njvwooVqApUk7zx3DyVDJcTsYNrIprVaLhDY2gE/E4B7u7hQdAFcaraSlPtmFzpCA1zQXUrscBU0GY3DlmqW0spV56cv0Fh0LpIwTtlAvU94fM05jntHEBT03dCpFHRLNpC0PoyKySRV9+W0mINaMyWsjkc6R1ch4W/e2GNpH9n9gtEhltLJJpSAC980oJAyF1jmtaM8AAMcleaM0rDO29E8O3jJzfxNzCm0WyptfpyKprP5iitEM1mYGwtfaIALpYXtM8YAwMb5CBKN7XuDtzjg1V9qt0ws8sphlhDWkAyujDi44NIbG91BV2ZpyW1SyBoLnENaMySABzJWga66xtmAghN5l4F7tjiMg3eAca8ljJ3JqN96y0KSyWx7qB59oCf8wBx/ePiHQhWIszD4m+F2V0nA8nfQ9yoFiaKEbqKd8PM/RaM5XZZqNtDJDHvwIP9wptkZT0XizR5V2LLO+60nd+aQpuTstXkR1Kqpxc5aJNv6ZlPKcSFjXp5x7DyXldgtD5hJ3bYREXpieooy5waM3ENHMmg9V2SJgaABkAB2XM9UbJ7S1x7mVef9uX/ACLV1BRzZe7Jp2hKfNpd3uwiIoy2CIiAh6UsYmhfEfiaQOBzaehoVyJ7SCQRQgkEbiMCF2lc7150Z7Ob2rR4JM+Dxn3GPdZwfAqdq0N6KqLhk+nt5msoiKUogs9jluuB2beVFgRYzgpxcXo8iSjVlSqRqR1TT7i5hfeBBzGB759V6mhqzH7vlT8yq2wSXXjccD9PNWr3ig3UOXGi53G4dUamWjWX51O42Vjf+VQTf6ouz8n3a9t+hQaQbjSm04KBJB8OW9bFarGa1GNTQcjtUKSylrq02mp9FpKTiXKcZIq3QgHKhHQhZWzyj/Nlpuvvp6qRFHV54HzXuWKvOtVl8Sx7ZMiPq8+IlxGPiJPqvLI6kDt2UiJlHnlh3XqOOjzupXuvHI9PUDABzx8lNjZVvVR7OMBupUqws7PCa7vPNR6s8ZnvhrKnIBQLTa7wc3YSKeVT5KXah9mRwHkQqdXezaEJR32s0/R/nU5Pb2NrU5qjF/K45/Xei/DNcmkwiIrk5UIiz2CyOlkbEz3nGnLeeQFT0QJNuyN0/Z/Ybsb5iMXm638Lcz1dX91besFks7Y2Njb7rWho5BZ1A3dnW4ekqVOMOX34+IREXhMEREAUDS+j2zxOidtGB+VwyP64qeiHkoqScXozjVqs7o3uY8Uc00I4/ksS6HrdoH2zfaRj7VoxA+Nu78Q2dty54p07nK4rDSoT3XpwfP3XH3CIi9NcKzsEl5pYcxlyVYskMha4EbFr4qgq1Jx46rqb2zsW8LiI1OGj6PXu1LU1BB/Q4LK8tc1wOGIr5UKi2Oe8C07MOn9Fme3wg8PJc3VpToycJHd4evDE0lVhx8M9PAh/9OGkubWhFRXfiD6LGxnhJU+QYU3HDkRisDG0FOagkbUWRC3CvFfWMxHH0WYRYU4lZIm1PkOSxMrmKyR4U6dlPa0Aeq8vc1gqdp6lV89sLjhgMRTnnRb2Fwc62a05lZj9qUcLlJ3llkter5fd8sz7Na63uNAOValRERdJTpxpq0fzKxwVbEVK0t6o7vPxbb8W/pZaJBERZkQW+6j6HuM9u8eN4o0HY3fzd6U3qi1U0EbQ++8fYtOP33fLy39uXSVHOXAuNmYW7+NL6evp3n1ERRl2EREAREQBERAFpmterN4meAeLN7B8W9zRv3jbzz3NF6nYhr0IVobsv9HFUXQtY9V2zVkio2XMjJr+e53HvvWhWmzPjcWSNLXDMH9YjiplJM5vEYWpQdpacHwfo+x+JiREXprGWzyXTXmVLs1p91pyN4fkfOir0UFbDwqpqS/LNeZuYXHVsM04PK+nD9t+/dSLphq078vqFGe6jhxr6BYIbXR5JyOfPYstrNcWmu7cd6pHgpU6kYz0a14JtW8G79DrP+2p1qE5U/1RldR4tKV1b+6K672XK+QhZGkNF52WxQpLR4RTN2fdYHvrSuzJZ4fZk551HbN5ccvcixm36VP5aK3nZNPhnZrt0eemfy8zJapr7q7NiwIivYQUIqMdEcfVqzqzdSbu27sIiLIwCudXdAvtLqmrYQfE7f8Adbx9FP0Bqm+Skk4LI8w3Jzufyjz5ZrfIYmsaGtAa0CgAwACwlLkWmD2e5/PVyXLn15Lx6cflmgbGwMYA1rRQAbFnRFEX6VgiIgCIiAIiIAiIgCIiAKDpLRkU7bsrQdxyc3kdinIh5KKkrPNHPNLanTR1dCfas3ZOHTJ3TstakaWktcCCMwRQjmDku0KHbtHxSiksbX8xiORzHRZqfMqq+yoSzpu3Zw9vE5Ci3226kROxieY+B8bfUHzVPPqTaG+6WPHA3T2Ip5rPeRXT2fiI/tv0z9/A1pFbP1btbc4HdHNd6FYjoO0/6L/3XL26Nd0Kv8JdzK5FaM1ftRygd1oPUqZDqfa3ZtDPxPaf4apdIyWHrS0i+5+hr6LdLJqL/qzdGt/md+Sv9H6v2aHFkYvfM7xHpXAdKLzfRtU9mV5fqtHr+eZoOi9X7RPQtZdZ87qtb02u6LdtC6swwUcftJPmcMAfut2c8Sr9FG5Nlth8BSo56vm/JaefaERFiboREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQH//Z'),
    Animal(
        nome: 'Girafa',
        habilidade: 'Altura máxima',
        peso: 1300,
        altura: 2.00,
        sobre: 'A girafa é um mamífero alto e elegante que é encontrado em várias partes da África. É a mais alta espécie de mamíferos terrestres, com pescoço longo e pernas esguias que lhes permitem alcançar as folhas das árvores, seu principal alimento. As girafas têm manchas marrons em sua pelagem amarela e uma língua preênsil que pode se estender até 45 cm para ajudá-las a pegar as folhas das árvores. As girafas são animais solitários ou vivem em pequenos grupos e, apesar de serem animais pacíficos, os machos às vezes lutam usando seus pescoços como armas. Infelizmente, as girafas estão ameaçadas devido à perda de habitat e à caça ilegal, com sua população tendo diminuído significativamente nos últimos anos. Por causa disso, as girafas são agora consideradas uma espécie vulnerável.',
        origem: 'África',
        avatarUrl:
            'https://t3.ftcdn.net/jpg/04/44/09/96/360_F_444099646_frFRuxzpnb7Gxo5lzq3ZQHpjew861QPe.jpg'),
    Animal(
        nome: 'Elefante',
        habilidade: 'Peso Máximo',
        peso: 5000,
        altura: 2.00,
        sobre: 'O elefante é um dos animais mais icônicos e reconhecidos do mundo, com sua silhueta inconfundível, grandes orelhas e trombas distintivas. Eles são encontrados em várias partes da África e da Ásia, e são conhecidos por serem os maiores animais terrestres do mundo. Os elefantes são animais sociais que vivem em grupos liderados por fêmeas adultas, com os machos geralmente vivendo sozinhos ou em grupos separados. Sua tromba é uma característica distintiva que eles usam para pegar comida, beber água e se comunicar uns com os outros. Além disso, eles são animais altamente inteligentes e emocionais, com a capacidade de demonstrar empatia e memória de longo prazo. Infelizmente, a população de elefantes em todo o mundo está ameaçada devido à caça ilegal de marfim e à perda de habitat, o que torna esses majestosos animais em risco de extinção.',
        origem: 'África',
        avatarUrl:
            'data:image/jpeg;base64,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'),
    Animal(
        nome: 'Macaco',
        habilidade: 'Movimento',
        peso: 3,
        altura: 0.60,
        sobre: 'O macaco é um animal altamente adaptável e habilidoso que pode ser encontrado em uma ampla variedade de habitats, desde florestas tropicais até desertos. Eles são primatas e compartilham muitas características com os seres humanos, como o uso de ferramentas, habilidades cognitivas complexas e a capacidade de comunicação sofisticada. Os macacos também são animais sociais que vivem em grupos hierárquicos liderados por um macho alfa. Eles se alimentam de uma variedade de alimentos, incluindo frutas, sementes, insetos e pequenos animais, e são frequentemente caçados por predadores naturais, como leopardos e aves de rapina. Infelizmente, muitas espécies de macacos em todo o mundo estão ameaçadas devido à perda de habitat e à caça ilegal, o que torna sua conservação uma preocupação global.',
        origem: 'África e Ásia',
        avatarUrl:
            ''),
    Animal(
        nome: 'Onça Pintada',
        habilidade: 'Agilidade',
        peso: 90,
        altura: 1.70,
        sobre: 'A onça-pintada é um felino poderoso e imponente, encontrado nas regiões da América Central e do Sul. Com suas manchas únicas e inconfundíveis, ela é considerada um dos animais mais emblemáticos e majestosos da fauna latino-americana. As onças-pintadas são animais solitários e territoriais, que podem ser encontrados em uma ampla variedade de habitats, incluindo florestas tropicais, savanas e pântanos. Elas são excelentes caçadoras, capazes de perseguir e matar presas maiores do que elas mesmas, graças à sua força, agilidade e habilidades de camuflagem. Infelizmente, a população de onças-pintadas em todo o mundo está ameaçada devido à caça ilegal e à perda de habitat, tornando a conservação desses majestosos animais uma preocupação global. A onça-pintada é um animal importante na cultura e mitologia de muitos povos indígenas da América Latina e é um símbolo da diversidade biológica dessa região.',
        origem: 'América do Sul e América Central',
        avatarUrl:
            ''),
    Animal(
        nome: 'Hipopótamo',
        habilidade: 'Semiaquático',
        peso: 1800,
        altura: 1.80,
        sobre: 'O hipopótamo é um dos maiores animais terrestres do mundo, com uma aparência imponente e poderosa. Ele é encontrado em várias regiões da África, onde habita rios, lagos e lagoas. Os hipopótamos são animais semiaquáticos e passam grande parte do tempo submersos em água para se refrescarem e protegerem a pele do sol forte, emergindo apenas à noite para se alimentar. Eles são animais herbívoros e se alimentam principalmente de gramíneas. Apesar de sua aparência pacífica, os hipopótamos são animais extremamente fortes e agressivos, com mandíbulas poderosas capazes de esmagar facilmente a carne e os ossos de suas presas. Eles também são considerados excelentes nadadores, capazes de cruzar grandes distâncias em rios e lagos. Os hipopótamos são importantes para a fauna africana e têm sido objeto de estudos científicos e programas de conservação, uma vez que são considerados uma espécie vulnerável devido à perda de habitat e à caça ilegal.',
        origem: 'África',
        avatarUrl:
            ''),
    Animal(
        nome: 'Urso',
        habilidade: 'Sobrevivência',
        peso: 600,
        altura: 2.50,
        sobre: 'Os ursos são mamíferos carnívoros que pertencem à família Ursidae. São animais grandes e poderosos, com corpos musculosos, patas fortes e garras afiadas. Eles são encontrados em muitas partes do mundo e são adaptáveis a diferentes ambientes, desde regiões árticas até florestas tropicais. Os ursos são animais solitários e territorialistas, mas podem se reunir em grupos durante a época de acasalamento ou em áreas com abundância de alimento. Eles são excelentes nadadores e podem correr em alta velocidade, mesmo em terrenos acidentados. Os ursos são animais inteligentes, com uma excelente capacidade de aprendizado e memória, o que lhes permite resolver problemas complexos para obter alimento e se proteger de predadores. Infelizmente, muitas espécies de ursos estão ameaçadas de extinção devido à perda de habitat, caça e comércio ilegal de partes do corpo, como patas e vesícula biliar.',
        origem: 'América do Norte, América do Sul, Europa e Ásia',
        avatarUrl:
            ''),
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

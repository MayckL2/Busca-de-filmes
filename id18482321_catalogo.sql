-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 24-Abr-2023 às 18:10
-- Versão do servidor: 10.5.16-MariaDB
-- versão do PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `id18482321_catalogo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `filmes`
--

CREATE TABLE `filmes` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `sinopse` text DEFAULT NULL,
  `duracao` float DEFAULT NULL,
  `classificacao` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `filmes`
--

INSERT INTO `filmes` (`id`, `nome`, `sinopse`, `duracao`, `classificacao`) VALUES
(1, 'avatar', 'No exuberante mundo alienígena de Pandora vivem os Na\'vi, seres que parecem ser primitivos, mas são altamente evoluídos. Como o ambiente do planeta é tóxico, foram criados os avatares, corpos biológicos controlados pela mente humana que se movimentam livremente em Pandora. Jake Sully, um ex-fuzileiro naval paralítico, volta a andar através de um avatar e se apaixona por uma Na\'vi. Esta paixão leva Jake a lutar pela sobrevivência de Pandora.', 2.42, 12),
(2, 'alita', 'Abandonada em um ferro-velho de Iron City, a ciborgue Alita é encontrada pelo cientista Dyson Ido. Revitalizada, ela acorda sem memória e reconhecimento do mundo em que se encontra. Determinada a conhecer seu passado e explorar suas habilidades surpreendentes de luta, Alita se torna uma poderosa caçadora de recompensas, combatendo forças mortais.\r\n', 2.02, 14),
(3, 'brilho eterno de uma mente sem lembranças', 'Joel se surpreende ao saber que seu amor verdadeiro, Clementine, o apagou completamente de sua memória. Ele decide fazer o mesmo, mas muda de ideia. Preso dentro da própria mente enquanto os especialistas se mantêm ocupados em seu apartamento, Joel precisa avisá-los para parar.', 1.48, 16),
(4, 'a viagem', 'Várias histórias são desenroladas em diferentes linhas de tempo, mas mesmo sendo independentes e se desenvolvendo ao longo de cinco séculos, todas estão relacionadas e algumas têm impacto sobre outras, entrelaçando drama, mistério, ação e amor.', 2.52, 16),
(5, 'clube da luta', 'Um homem deprimido que sofre de insônia conhece um estranho vendedor chamado Tyler Durden e se vê morando em uma casa suja depois que seu perfeito apartamento é destruído. A dupla forma um clube com regras rígidas onde homens lutam. A parceria perfeita é comprometida quando uma mulher, Marla, atrai a atenção de Tyler.\r\n', 2.19, 18),
(6, 'constantine', 'Contos sobrenaturais baseados nas histórias em quadrinhos \"Hellblazer\". O solitário Constantine tenta garantir seu lugar no paraíso enviando demônios de volta ao inferno, mas seu destino está ligado ao de Angela, uma policial que investiga o suposto suicídio de sua irmã gêmea.\r\n', 2.01, 14),
(7, 'fique rico ou morra tentando', 'Após a morte de sua mãe quando ele era um menino, Marcus tem pouco apoio em sua vida. Ele começa a trabalhar para o traficante Levar e seu assistente. Apesar de Marcus fazer bom dinheiro vendendo drogas, seu sonho é se tornar um rapper. Quando ele reencontra um antigo amor e é baleado várias vezes durante um assalto, Marcus decide que é hora de mudar sua vida. No entanto, seus antigos sócios não vão deixá-lo ir tão facilmente.', 2.14, 16),
(8, 'gotham', 'Antes de Batman, a cidade de Gotham já existia. James Gordon (Ben McKenzie) é um detetive iniciante polícia. Corajoso, sincero e ansioso para mostrar serviço, o recém-promovido tem como missão solucionar o caso do assassinato dos bilionários Thomas e Martha Wayne, um dos casos mais complexos da cidade.\r\n', 0, 14),
(9, 'espetacular homem aranha 2', 'O jovem Peter Parker está fascinado com as habilidades que adquiriu como Homem-Aranha. Agora, ele precisa lidar com dois problemas: o retorno de um velho amigo, Harry Osborn, e a chegada de um vilão mais forte e poderoso, Electro.', 2.22, 12),
(10, 'espetacular homem aranha', 'Peter Parker está tentando saber mais sobre sua origem. Ele encontra uma pasta que pertenceu ao seu pai e quer descobrir por que seus pais desapareceram. Sua busca o leva a Oscorp e ao dr. Curt Connors, que tem como alterego o letal Lagarto.', 2.16, 10),
(11, 'incrivel hulk', 'O cientista Bruce Banner se esconde no Brasil enquanto busca desesperadamente a cura da mutação que o transforma em um monstro incontrolável. Só assim ele poderá novamente levar uma vida normal e ficar ao lado da mulher que ama. Porém, durante este processo, ele precisa lutar contra o Abominável, um novo inimigo que quer capturá-lo.\r\n', 1.52, 10),
(12, 'interestelar', 'As reservas naturais da Terra estão chegando ao fim e um grupo de astronautas recebe a missão de verificar possíveis planetas para receberem a população mundial, possibilitando a continuação da espécie. Cooper é chamado para liderar o grupo e aceita a missão sabendo que pode nunca mais ver os filhos. Ao lado de Brand, Jenkins e Doyle, ele seguirá em busca de um novo lar.\r\n', 2.49, 10),
(13, 'homem de ferro', 'Tony Stark é um industrial bilionário e inventor brilhante que realiza testes bélicos no exterior, mas é sequestrado por terroristas que o forçam a construir uma arma devastadora. Em vez disso, ele constrói uma armadura blindada e enfrenta seus sequestradores. Ao voltar para os EUA, Stark aprimora a armadura e a utiliza para combater o crime.', 2.06, 12),
(14, 'coringa', 'Isolado, intimidado e desconsiderado pela sociedade, o fracassado comediante Arthur Fleck inicia seu caminho como uma mente criminosa após assassinar três homens em pleno metrô. Sua ação inicia um movimento popular contra a elite de Gotham City, da qual Thomas Wayne é seu maior representante.\r\n', 2.02, 16),
(15, 'a mulher rei', 'Em 1800, o general Nanisca treina um grupo de mulheres guerreiras para proteger o reino africano de Dahomey de um inimigo estrangeiro.', 2.14, 14),
(16, 'rei leao', 'Este desenho animado da Disney mostra as aventuras de um leão jovem de nome Simba, o herdeiro de seu pai, Mufasa. O tio malvado de Simba, Oscar, planeja roubar o trono de Mufasa atraindo pai e filho para uma emboscada. Simba consegue escapar e somente Mufasa morre. Com a ajuda de seus amigos,Timon e Pumba, ele reaparece como adulto para recuperar sua terra, que foi roubada por seu tio Oscar.', 1.27, 0),
(17, 'shrek', 'Um ogro tem sua vida invadida por personagens de contos de fadas que acabam com a tranquilidade de seu lar. Ele faz um acordo pra resgatar uma princesa.\r\n', 1.29, 0),
(18, 'shrek 2', 'Shrek e Fiona acabaram de voltar da lua de mel e vivem felizes em sua casa no pântano. O casal recebe um convite dos pais da princesa, que querem conhecer o novo genro, para um jantar no castelo. Eles ficaram sabendo que Fiona havia se casado com o seu verdadeiro amor, mas o que eles ainda não sabem é que este amor é um ogro mal-educado de mais de 300 quilos, que conta com um burro falante como melhor amigo.', 1.45, 0),
(19, 'shrek terceiro', 'Doente em estado terminal, o rei Harold chama Fiona e Shrek para uma conversa sobre a sucessão de seu reinado e o futuro do povo em Tão Tão Distante. Como o genro se recusa a assumir o trono e prefere continuar sua pacata vida no pântano, a única saída é encontrar o primo Artur. Na companhia do Burro e do Gato de Botas, Shrek se encarrega da missão e sai em busca do parente que pode ser seu substituto no trono. Mas, antes de cumprir a tarefa, enfrenta as armações do ambicioso Príncipe Encantado.', 1.33, 0),
(20, 'shrek para sempre', 'Há muito tempo ajustado à vida de casado e totalmente domesticado, Shrek fica entediado e começa a ter saudades dos dias em que se sentia um ogro de verdade. Para recuperá-los, ele firma um pacto com Rumpelstiltskin e é levado a um mundo onde ogros são caçados e ele e Fiona nunca se conheceram, além de que seus amigos Burro e Gato de Botas também não o reconhecem. Shrek precisa encontrar um jeito de se livrar do contrato para recuperar sua vida normal e seu grande amor.', 1.33, 0),
(21, 'star wars', 'A princesa Leia é mantida refém pelas forças imperiais comandadas por Darth Vader. Luke Skywalker e o capitão Han Solo precisam libertá-la e restaurar a liberdade e a justiça na galáxia.', 2.01, 0),
(22, 'x-men o filme', 'Eles são filhos do átomo superior, o próximo elo na corrente da evolução. Cada um nasceu com uma mutação genética rara, que na puberdade se manifestou em poderes extraordinários. Em um mundo cheio de ódio e preconceito, eles são temidos por aqueles que não podem aceitar suas diferenças. Liderados por Xavier, os X-Men lutam para proteger um mundo que os teme. Eles estão presos em uma batalha contra um ex-colega e amigo, Magneto, que acredita que os humanos e os mutantes não devem viver juntos.', 1.44, 12),
(23, 'x-men 2', 'Stryker, um ex-comandante perverso do exército, tem a chave para o passado de Wolverine e o futuro dos X-Men. Esta ameaça reacende a chamada para um ato de registro mutante. Stryker inicia um ataque à mansão e escola do Professor Xavier. Depois de escapar de sua cela de plástico, Magneto propõe uma parceria com Xavier e os X-Men para combater esse novo inimigo que ambos têm em comum.', 2.14, 12),
(24, 'x-men 3 o confronto final', 'A descoberta de uma cura para as mutações leva os mutantes a um ponto decisivo. Eles podem escolher entre abandonar seus poderes e se tornarem humanos ou continuar com os poderes e permanecerem excluídos. Uma batalha é travada entre os simpatizantes de Charles Xavier, que prega a tolerância, e os seguidores de Magneto, que defende a sobrevivência dos mais fortes.', 1.44, 12),
(25, 'x-men primeira classe', 'No início dos anos 1960, durante o auge da Guerra Fria, um mutante chamado Charles Xavier conhece um mutante chamado Erik Lehnsherr. Apesar de suas origens muito diferentes - Charles cresceu em uma família rica enquanto Erik perdeu seus pais em Auschwitz -, os dois se tornam grandes amigos. Enquanto o mundo oscila à beira de uma guerra nuclear, Charles e Erik unem forças com outros mutantes para salvar a humanidade. No entanto, um acontecimento separa os dois amigos.', 2.12, 12),
(26, 'x-men origens wolverine', 'Tentando esquecer seu passado sombrio, Logan, mais conhecido como Wolverine, parece ter encontrado o amor e a felicidade com Kayla Silverfox. Mas a paz de Logan é abalada quando Victor Creed, seu irmão cruel, assassina brutalmente Kayla. A sede de vingança de Logan o leva ao programa Arma X. Ele passa por um processo doloroso para fortalecer seus ossos com adamantium, o que o torna praticamente indestrutível.', 1.47, 14),
(27, 'wolverine imortal', 'Após matar Jean Grey para salvar a humanidade, Logan passou a viver na selva. Deprimido, ele é encontrado em um bar pela jovem Yukio, filha de Yashida, que foi salvo por Logan em Nagasaki na época da bomba atômica. Yashima deseja reencontrar Logan para fazer-lhe uma proposta: transferir seu fator de cura para ele, de forma que Logan possa, enfim, se tornar mortal e levar uma vida como uma pessoa qualquer. Ele recusa o convite, mas acaba infectado por uma mutante imune a venenos de todo tipo.', 2.06, 14),
(28, 'x-men dias de um futuro esquecido', 'O Dr. Bolivar Trask acredita que os mutantes são uma ameaça para a humanidade. Ele desenvolve gigantescos robôs chamados Sentinelas, que perseguem impiedosamente os mutantes. Os poucos sobreviventes precisam viver escondidos. Wolverine viaja no tempo para procurar os jovens Xavier e Magneto e impedir que eles sejam caçados e aniquilados no futuro.', 2.12, 12),
(29, 'x-men apocalipse', 'O primeiro mutante destruidor do mundo, Apocalipse, está de volta disposto a acabar com a humanidade. Professor Xavier conta com Mística, Fera e Mercúrio, além de novos alunos, para impedir o vilão.', 2.24, 12),
(30, 'logan', 'Em 2024, os mutantes estão em franco declínio, e as pessoas não sabem o real motivo. Uma organização está transformando as crianças mutantes em verdadeiras assassinas. Wolverine, cansado de tudo e a pedido de um cada vez mais enfraquecido Professor Xavier, precisa proteger a jovem e poderosa Laura Kinney, conhecida como X-23. Enquanto isso, o vilão Nathaniel Essex amplia seu projeto de destruição.', 2.17, 16),
(31, 'x-men fênix negra', 'Jean Grey começa a desenvolver incríveis poderes que a corrompem e a transformam em uma Fênix Negra. Agora, os X-Men precisam decidir se a vida de um membro da equipe vale mais do que todas as pessoas do mundo.', 1.54, 12),
(32, 'os novos mutantes', 'Cinco jovens mutantes descobrem o alcance de seus poderes e lidam com traumas do passado. Eles são mantidos em uma instituição secreta pela Dra. Cecilia Reyes, que promete controlar suas habilidades. Porém, eles descobrem que nada é o que parece.', 1.34, 14);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `filmes`
--
ALTER TABLE `filmes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

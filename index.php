<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Busca de Filmes</title>
  <link rel="icon" href="img/pop-corn.png">
  <link rel="stylesheet" href="style.css">

</head>

<body>
  <a href="index.php" class="volta">
    <img src="img/left-arrow.png" alt="">
  </a>

  <div class="cont">
    <a href="https://github.com/MayckL2" target="_blank">
      <img src="img/github.png" alt="">
    </a>
    <a href="https://www.linkedin.com/in/mayck-luciano-993403171/" target="_blank">
      <img src="img/linkedin.png" alt="">
    </a>
  </div>

  <a href="#top" class="top">
    <img src="img/left-arrow.png" alt="">
  </a>

  <header id="top">
    <form action="busca.php" method="post">
      <input type="text" name="busca" placeholder="Pesquise um filme aqui">
      <input type="submit">
    </form>
  </header>

  <main>
    <?php
    include "conexao.php";

    $sql = "select * from filmes";
    $res = mysqli_query($con, $sql);

    //acessa coluna pelo nome
    while ($vreg = mysqli_fetch_assoc($res)) {
      $id = $vreg['id'];
      $nome = $vreg['nome'];
      $sinopse = $vreg['sinopse'];
      $classif = $vreg['classificacao'];
      if ($classif == 0) {
        $bk = "green";
        $m = "Livre";
      } elseif ($classif == 10) {
        $bk = "blue";
        $m = $classif;
      } elseif ($classif == 12) {
        $bk = "gold";
        $m = $classif;
      } elseif ($classif == 14) {
        $bk = "orange";
        $m = $classif;
      } elseif ($classif == 16) {
        $bk = "red";
        $m = $classif;
      } else {
        $bk = "black";
        $m = $classif;
      }

      $duracao = $vreg['duracao'];

      // echo "<h1>$id - $nome</h1>";
      echo "<div>
                    <img src='img/" . $nome . ".jpg'>
                    <p class='cl' style='background-color: $bk'>$m</p>
                    <p class='dr'>$duracao Min</p>
                    <p class='nm'><spam>$nome</spam><br>$sinopse</p>
                  </div>";
    }

    $con->close();

    ?>
  </main>

  <footer>
    <p>
      FEITO POR <a href="https://github.com/MayckL2">MAYCK LUCIANO</a>
    </p>
  </footer>

</body>

</html>
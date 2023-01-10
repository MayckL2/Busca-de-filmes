<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Busca de Filmes</title>
    <link rel="icon" href="img/pop-corn.png">
    <!-- <link rel="stylesheet" href="style.css"> -->
    <style>
        * {
  margin: 0px;
}
html{
  scroll-behavior: smooth;
}
body {
  background-color: gray;
  color: white;
}

.volta {
  position: absolute;
  top: 20px;
  left: 50px;
  width: 50px;
  height: 50px;
  background-color: white;
  border-radius: 50%;
  display: flex;
  justify-content: flex-start;
  align-items: center;
  transition: all 0.5s;
}
.volta img {
  width: 40px;
  height: 40px;
}

.volta:hover {
  scale: 1.1;
}

header {
  /* background-color: green; */
  background-image: url(img/backgrounds-Shrek-1893571-wallhere.com.jpg);
  background-size: cover;
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
}
header form {
  display: flex;
  flex-direction: column;
  align-items: center;
}
header form input {
  margin: 10px;
  font-size: 20px;
  padding: 10px;
  border-radius: 10px;
}
header form input:nth-child(1) {
  width: 40vw;
  text-align: center;
  border: none;
}
header form input:nth-child(1):focus {
  outline: none;
}
header form input:nth-child(2) {
  width: 150px;
  transition: all 0.5s;
  cursor: pointer;
}
header form input:nth-child(2):hover {
  background-color: gray;
}

main {
  height: 100vh;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
}
main div {
  width: 250px;
  height: 170px;
  margin: 20px;
  cursor: pointer;
  position: relative;
}
main div img {
  border-radius: 20px;
  width: inherit;
  height: inherit;
  transition: all 0.5s;
  object-fit: cover;
}
main div .nm {
  margin-top: -170px;
  margin-left: -7px;
  transition: all 0.5s;
  background-color: green;
  border-radius: 20px;
  padding: 10px;
  width: 250px;
  opacity: 0;
  position: absolute;
}
main div .nm spam{
  text-transform: uppercase;
  text-decoration-line: underline;
}
main div .dr{
  position: absolute;
  top: 0px;
  left: 5px;
  background-color: green;
  padding: 5px;
  border-radius: 10px;
  opacity: 0;
  z-index: 999;
  transition: all 0.5s;
}
main div .cl{
  position: absolute;
  top: 0px;
  right: 5px;
  background-color: green;
  padding: 5px;
  border-radius: 10px;
  opacity: 0;
  z-index: 999;
  transition: all 0.5s;
}
main div:hover img {
  scale: 1.1;
}
main div:hover .nm {
  margin-top: 0px;
  opacity: 1;
  z-index: 999;
}
main div:hover .dr {
  margin-top: 0px;
  z-index: 999;
  opacity: 1;
}main div:hover .cl {
  opacity: 1;
}

.cont{
  display: flex;
  justify-content: space-around;
  align-items: center;
  width: 200px;
  position: absolute;
  top: 20px;
  right: 10px;
}
.cont a img{
  width: 50px;
}
@media (max-width: 350px){
  .cont{
    width: 40vw;
  }
  .top{
    display: none;
  }
}
@media (max-width: 500px){
  header form input:nth-child(1) {
    width: 80vw;
    text-align: center;
    border: none;
  }
  .top img{
    width: 8vw !important;
  }
}
.top{
  position: fixed;
  bottom: 50px;
  right: 10px;
  background-color: greenyellow;
  border-radius: 50%;
  z-index: 99;
  transition: all 0.5s;
}
.top img{
  width: 50px;
  rotate: 90deg;
  padding: 5px;
}
.top:hover{
  scale: 1.1;
}
    </style>

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
        while($vreg= mysqli_fetch_assoc($res)){
            $id = $vreg['id'];
            $nome = $vreg['nome'];
            $sinopse = $vreg['sinopse'];
            $classif = $vreg['classificacao'];
            if ($classif == 0){
            $bk = "green";
            $m = "Livre";
            }elseif($classif == 10){
            $bk = "blue";
            $m = $classif;
            }elseif($classif == 12){
            $bk = "gold";
            $m = $classif;
            }elseif($classif == 14){
            $bk = "orange";
            $m = $classif;
            }elseif($classif == 16){
            $bk = "red";
            $m = $classif;
            }else{
            $bk = "black";
            $m = $classif;
            }

            $duracao = $vreg['duracao'];

            // echo "<h1>$id - $nome</h1>";
            echo "<div>
                    <img src='img/". $nome .".jpg'>
                    <p class='cl' style='background-color: $bk'>$m</p>
                    <p class='dr'>$duracao Min</p>
                    <p class='nm'><spam>$nome</spam><br>$sinopse</p>
                  </div>";
        }

        $con -> close();
        ?>
    </main>

</body>
</html>
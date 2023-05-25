<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultado Busca</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div>
    <fieldset id="fieldresultado"><legend>Resultado da Busca</legend>
    <?php 
    
    include("conexao.php");

    $nomeContato = $_POST['nomeContato'];

    $sql = "SELECT nome_contato, numero_contato, numero2_contato FROM contatos WHERE LOWER(nome_contato) LIKE '%$nomeContato%'";
    
    $resultado = mysqli_query($conn, $sql);

    if(mysqli_num_rows($resultado)>0){
        while ($row = mysqli_fetch_assoc($resultado)){
            echo '<div id=resultado>';
            echo $row['nome_contato']." - ";
            echo "Número Principal: ".$row['numero_contato']." - ";
            echo "Número Secundário: ".$row['numero2_contato']."<br>";
            echo '</div>';
        }
    } else{
        echo '<div id=resultado>';
        echo "Nenhum resultado encontrado.";
        echo '</div>';
    }
    echo '<div id=resultado>';
    echo '<button onclick="history.back()">Voltar</button>';
    echo '</div>';
    mysqli_close($conn);
    ?>
    </fieldset>
    </div>
</body>
</html>
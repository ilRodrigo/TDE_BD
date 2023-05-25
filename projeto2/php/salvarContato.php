<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista Telefônica</title>
    <link rel="stylesheet" href="style.css">
</head>
<body id="salva">

<div>
    <fieldset id="fieldresultado">
        <?php 
        
        include("conexao.php");
        
        $nomeContato = $_POST['nomeContato'];
        $numeroContato = $_POST['numeroContato'];
        $numero2Contato = $_POST['numero2Contato'];
        $enderecoContato = $_POST['enderecoContato'];
        $emailContato = $_POST['emailContato'];
        
        $sql = "INSERT INTO contatos (nome_contato, numero_contato, numero2_contato, endereco_contato, email_contato)
                VALUES ('$nomeContato', '$numeroContato', '$numero2Contato', '$enderecoContato', '$emailContato')";
        
        if(mysqli_query($conn, $sql)){
            echo '<div id="divbutao">';
            echo "Contato adicionado com sucesso!";
            echo '<button id="butaoV" onclick="window.location.href=\'index.html\'">VOLTAR AO MENU</button>';
            echo '</div>';
        } else{
            echo '<div id="divbutao">';
            echo "Erro ao adicionar contato - ".mysqli_error($conn);
            echo '<button id="butaoR" onclick="history.back()">TENTAR NOVAMENTE</button>';
            echo '</div>';
        }
        
        mysqli_close($conn);
        
        ?>
    </fieldset>
</div>
</body>
</html>
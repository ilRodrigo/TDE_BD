<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contato Excluído</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div>
    <fieldset id="fieldresultado"><legend>Excluir Contato</legend>
    <?php 
    
    include("conexao.php");

    $numeroContato = $_POST['numeroContato'];

    $sql = "SELECT COUNT(*) AS existe_registro FROM contatos WHERE numero_contato = '$numeroContato'";
    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
    $existeRegistro = $row['existe_registro'];

// Verifica se existe registro e executa o DELETE
if ($existeRegistro > 0) {
    $sqlDelete = "DELETE FROM contatos WHERE numero_contato = '$numeroContato'";
    if ($conn->query($sqlDelete) === TRUE) {
        echo '<div id="divbutao">';
        echo "Contato excluído com sucesso!";
        echo '<button id="butaoV" onclick="window.location.href=\'index.html\'">VOLTAR AO MENU</button>';
        echo '</div>';
    } else {
        echo '<div id="divbutao">';
        echo "Erro ao deletar registro: " . $conn->error;
        echo '<button id="butaoR" onclick="history.back()">TENTAR NOVAMENTE</button>';
        echo '</div>';
    }
} else {
    echo '<div id="divbutao">';
    echo "Número de telefone não está cadastrado.";
    echo '<button id="butaoR" onclick="history.back()">TENTAR NOVAMENTE</button>';
    echo '</div>';
}
    ?>
    </fieldset>
    </div>
</body>
</html>
<?php

$servername = "DESKTOP-UPE2D2C";
$username = "root";
$password = "root";
$dbname = "CadastroONG";

// Cria a conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica a conexão
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}

// Obtém os dados do formulário
$razao_social = $_POST['nome'];
$cnpj = $_POST['cnpj'];
$cep = $_POST['cep'];
$bairro = $_POST['bairro'];
$telefone = $_POST['telefone'];
$endereco = $_POST['endereco'];
$email = $_POST['email'];
$senha = password_hash($_POST['password'], PASSWORD_BCRYPT);

// Prepara e executa a inserção
$sql = "INSERT INTO ONGs (razao_social, cnpj, cep, bairro, telefone, endereco, email, senha) 
        VALUES ('$razao_social', '$cnpj', '$cep', '$bairro', '$telefone', '$endereco', '$email', '$senha')";

if ($conn->query($sql) === TRUE) {
    echo "Novo cadastro criado com sucesso";
} else {
    echo "Erro: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>

<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "adocao_animais";


$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


$sql = "SELECT nome, imagem, descricao FROM animais";
$result = $conn->query($sql);

// Fechar conexão
$conn->close();
?>


<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "login_system";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $email = $_POST['email'];
        $password = $_POST['password'];

        $stmt = $conn->prepare("SELECT * FROM users WHERE email = :email");
        $stmt->bindParam(':email', $email);
        $stmt->execute();

        $user = $stmt->fetch(PDO::FETCH_ASSOC);
        
        if ($user && password_verify($password, $user['password'])) {
            echo "Login successful!";
        } else {
            echo "Invalid email or password.";
        }
    }
} catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>


<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ongs_db";


$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}


$sql = "SELECT nome, descricao, imagem_url, link_album FROM ongs";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Output dos dados de cada linha
    while($row = $result->fetch_assoc()) {
        echo "<div class='img rounded col-sm-10 col-md-6 col-lg-3'>";
        echo "<a href='" . $row["link_album"] . "' class='img-galeria'>";
        echo "<img class='img-fluid mb-2 shadow rounded' src='" . $row["imagem_url"] . "' alt='imagem'></a>";
        echo "<h5 class='text-decoration-underline'>" . $row["nome"] . "</h5>";
        echo "<p>" . $row["descricao"] . "</p>";
        echo "</div>";
    }
} else {
    echo "0 resultados";
}
$conn->close();
?>

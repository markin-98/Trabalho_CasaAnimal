const listaOng = JSON.parse(localStorage.getItem("listaOng")) || [];

const nome = document.getElementById("nome");
const cnpj = document.getElementById("cnpj");
const cep = document.getElementById("cep");
const bairro = document.getElementById("bairro");
const telefone = document.getElementById("telefone");
const endereco = document.getElementById("endereco");
const email = document.getElementById("email");
const password = document.getElementById("password");

function isUsernameTaken(username) {
  return listaOng.some((user) => user.usernameCad == username);
}

function isEmailTaken(email) {
  return listaOng.some((user) => user.emailCad == email);
}

function cadastrar() {
  const usernameValue = username.value.trim();
  const emailValue = email.value.trim();
  const passwordValue = password.value.trim();
  const dataValue = data.value.trim();

  if (!usernameValue || !emailValue || !passwordValue || !dataValue) {
    alert("Preencha todos os campos antes de cadastrar.");
    return;
  }

  if (isUsernameTaken(usernameValue) || isEmailTaken(emailValue)) {
    alert("Usuário ou Email já cadastrado! Verifique suas credenciais.");
  } else {
    listaUsuarios.push({
      usernameCad: usernameValue,
      emailCad: emailValue,
      passwordCad: passwordValue,
      dataCar: dataValue,
    });

    // Armazenar a lista atualizada no Local Storage
    localStorage.setItem("listaoNG", JSON.stringify(listaOng));

    window.location.href = "/login.html";
  }

  // Limpar os campos do formulário
  username.value = "";
  email.value = "";
  password.value = "";
  data.value = "";
}

// Adicionar event listener para impedir o cadastro ao pressionar Enter
document.addEventListener("keydown", function (event) {
  if (event.key === "Enter") {
    cadastrar();
  }
});


const mysql = require('mysql2');
const express = require('express');
const app = express();
app.use(express.json());

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'seu_usuario',
    password: 'sua_senha',
    database: 'adocao'
});

app.post('/submit-form', (req, res) => {
    const { fotoAmbiente, nome, endereco, email, telefone, motivo, residencia, permiteAnimais, responsabilidade } = req.body;

    const query = `
        INSERT INTO formulario_adocao 
        (fotoAmbiente, nome, endereco, email, telefone, motivo, residencia, permiteAnimais, responsabilidade) 
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
    `;

    connection.execute(query, [fotoAmbiente, nome, endereco, email, telefone, motivo, residencia, permiteAnimais, responsabilidade], (err, results) => {
        if (err) {
            return res.status(500).send('Erro ao salvar os dados no banco de dados.');
        }
        res.status(200).send('Dados enviados com sucesso!');
    });
});

app.listen(3000, () => {
    console.log('Servidor rodando na porta 3000');
});


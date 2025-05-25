document.getElementById('animal-form').addEventListener('submit', function(event) {
    event.preventDefault();
    alert('Animal cadastrado com sucesso!');
});



const mysql = require('mysql');

// Configuração da conexão com o MySQL
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'seu_usuario_mysql',
    password: 'sua_senha_mysql',
    database: 'adocao_animais'
});

// Conectar ao MySQL
connection.connect((err) => {
    if (err) {
        console.error('Erro ao conectar ao MySQL: ' + err.stack);
        return;
    }
    console.log('Conexão bem-sucedida ao MySQL com o ID ' + connection.threadId);
});

// Exemplo de inserção de dados
const animal = {
    nome: 'Rex',
    raca: 'Labrador',
    idade: '5 anos',
    descricao: 'Um labrador muito brincalhão e dócil.',
    foto_url: 'http://exemplo.com/foto-rex.jpg'
};

connection.query('INSERT INTO animais SET ?', animal, (err, result) => {
    if (err) throw err;
    console.log('Animal inserido com o ID: ' + result.insertId);
});

// Fechar conexão ao terminar
connection.end();

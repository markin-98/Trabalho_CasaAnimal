function entrar() {
  const email = document.getElementById("email");
  const password = document.getElementById("password");

  let listaOng = JSON.parse(localStorage.getItem("listaOng")) || [];
  let userValid = null;

  listaOng.forEach((item) => {
    if (email.value.trim() == item.emailCad && password.value.trim() == item.passwordCad) {
      userValid = {
        username: item.usernameCad,
        email: item.emailCad,
        password: item.passwordCad
      };
    } 
  });

  if (userValid) {
    localStorage.setItem("userLogado", JSON.stringify(userValid));
    localStorage.setItem("username", userValid.username);
    window.location.href = "/test.html";
    return false;
  } else {
    alert("Usuário ou senha incorretos!");
  }
}

// Cadastro
document.getElementById('cadastroForm')?.addEventListener('submit', function (e) {
  e.preventDefault();
  const email = document.querySelector('input[type="email"]').value;
  const senha = document.querySelector('input[placeholder="CPF"]').value;
  const plano = document.querySelector('select').value;

  localStorage.setItem('userEmail', email);
  localStorage.setItem('userSenha', senha);
  localStorage.setItem('userPlano', plano);

  alert("Cadastro realizado! Agora faça login.");
  window.location.href = "login.html";
});

// Login
document.getElementById('loginForm')?.addEventListener('submit', function (e) {
  e.preventDefault();
  const email = document.getElementById('emailLogin').value;
  const senha = document.getElementById('senhaLogin').value;

  const emailSalvo = localStorage.getItem('userEmail');
  const senhaSalva = localStorage.getItem('userSenha');

  if (email === emailSalvo && senha === senhaSalva) {
    localStorage.setItem('logado', 'sim');
    alert("Login realizado com sucesso!");
    window.location.href = "painel.html";
  } else {
    alert("E-mail ou senha incorretos!");
  }
});

// Verifica login no painel
function verificarLogin() {
  const logado = localStorage.getItem('logado');
  if (logado !== 'sim') {
    alert("Você precisa estar logado para acessar o painel.");
    window.location.href = "login.html";
  } else {
    document.getElementById("userEmailDisplay").textContent = localStorage.getItem("userEmail");
    document.getElementById("userPlanoDisplay").textContent = localStorage.getItem("userPlano");
  }
}

// Logout
function logout() {
  localStorage.setItem('logado', 'nao');
  alert("Você saiu com sucesso.");
  window.location.href = "index.html";
}

// Recuperar senha
document.getElementById('recuperarForm')?.addEventListener('submit', function (e) {
  e.preventDefault();
  const email = document.getElementById('recuperarEmail').value;
  const emailSalvo = localStorage.getItem('userEmail');
  const senhaSalva = localStorage.getItem('userSenha');

  if (email === emailSalvo) {
    alert(`Sua senha cadastrada é: ${senhaSalva}`);
  } else {
    alert("E-mail não encontrado.");
  }
});
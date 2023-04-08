const input = document.getElementById("name");

async function logar() {
  const user = fetch("/login", {
    body: {
      login: input.value,
    },
  });
  console.log(user);
  window.location = "/pages/carrossel.html";
}

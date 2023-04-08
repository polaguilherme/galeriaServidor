function Showcarousel() {
  window.location = "/pages/carrossel.html";
}
function Logout() {
  window.location = "/index.html";
}

function excluir() {
  let line1 = document.getElementById("line-1");

  line1.style.display = "none";
}

function excluir2() {
  let line2 = document.getElementById("line-2");

  line2.style.display = "none";
}

function Showmodal() {
  let btnUpload = document.getElementById("upload");

  btnUpload.style.display = "block";
}
function hiddeModal() {
  let hiddeModal = document.getElementById("upload");

  hiddeModal.style.display = "none";
}

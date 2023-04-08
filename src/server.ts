import express from "express";
import path from "path";
import { prisma } from "./lib/prisma";
const app = express();
app.use(express.static(path.join(__dirname, "./client")));
// app.get("/", (req, res) => {
//   res.send(express.static(path.join(__dirname, "./clientz")));
// });

app.post("/register", async (req, res) => {
  const user = await prisma.user.create({
    data: {
      nm_login: "teste",
      vl_password: "123456",
      nm_user: "Guilherme Pola",
    },
  });
  res.json(user);
});

app.listen(3000, () => {
  console.log("exec");
});
app.use(express.json());
app.get("/carrossel", (req, res) => {
  const body = req.body;

  res.send("ola");
});
app.get("/login", async (req, res) => {
  const body = req.body;

  const loggedUser = await prisma.user.findUnique({
    where: {
      nm_login: body.login,
    },
  });
  res.json(loggedUser);
});

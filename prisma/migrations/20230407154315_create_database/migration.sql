-- CreateTable
CREATE TABLE "User" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "nm_user" TEXT NOT NULL,
    "nm_login" TEXT NOT NULL,
    "vl_password" TEXT NOT NULL,
    "vl_salt" TEXT NOT NULL,
    "created_At" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- CreateTable
CREATE TABLE "Galeria" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "id_user" INTEGER NOT NULL,
    "nm_image" TEXT NOT NULL,
    "nm_stored" TEXT NOT NULL,
    "vl_size_kb" INTEGER NOT NULL,
    CONSTRAINT "Galeria_id_user_fkey" FOREIGN KEY ("id_user") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "User_nm_login_key" ON "User"("nm_login");

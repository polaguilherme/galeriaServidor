/*
  Warnings:

  - You are about to drop the column `vl_salt` on the `User` table. All the data in the column will be lost.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_User" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "nm_user" TEXT NOT NULL,
    "nm_login" TEXT NOT NULL,
    "vl_password" TEXT NOT NULL,
    "created_At" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO "new_User" ("created_At", "id", "nm_login", "nm_user", "vl_password") SELECT "created_At", "id", "nm_login", "nm_user", "vl_password" FROM "User";
DROP TABLE "User";
ALTER TABLE "new_User" RENAME TO "User";
CREATE UNIQUE INDEX "User_nm_login_key" ON "User"("nm_login");
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;

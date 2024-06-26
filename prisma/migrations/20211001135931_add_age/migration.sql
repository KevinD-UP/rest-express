-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_User" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "email" TEXT NOT NULL,
    "name" TEXT,
    "age" INTEGER NOT NULL DEFAULT 0,
    "champ" INTEGER NOT NULL DEFAULT 0
);
INSERT INTO "new_User" ("age", "champ", "email", "id", "name") SELECT coalesce("age", 0) AS "age", "champ", "email", "id", "name" FROM "User";
DROP TABLE "User";
ALTER TABLE "new_User" RENAME TO "User";
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;

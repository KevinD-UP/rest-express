-- CreateTable
CREATE TABLE "testingTable" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "bio" TEXT,
    "userId" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "testingTable_userId_key" ON "testingTable"("userId");

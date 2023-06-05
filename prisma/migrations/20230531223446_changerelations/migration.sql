/*
  Warnings:

  - You are about to drop the `UsersHaveRecipes` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `userId` to the `Recipes` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `UsersHaveRecipes` DROP FOREIGN KEY `UsersHaveRecipes_recipesId_fkey`;

-- DropForeignKey
ALTER TABLE `UsersHaveRecipes` DROP FOREIGN KEY `UsersHaveRecipes_usersId_fkey`;

-- AlterTable
ALTER TABLE `Recipes` ADD COLUMN `userId` INTEGER NOT NULL;

-- DropTable
DROP TABLE `UsersHaveRecipes`;

-- AddForeignKey
ALTER TABLE `Recipes` ADD CONSTRAINT `Recipes_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `Users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

/*
  Warnings:

  - Added the required column `name` to the `Recipes` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Recipes` ADD COLUMN `name` VARCHAR(191) NOT NULL;

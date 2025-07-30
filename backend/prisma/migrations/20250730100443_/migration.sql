/*
  Warnings:

  - A unique constraint covering the columns `[authorId,serviceId]` on the table `Review` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE `Service` ADD COLUMN `imageUrl` TEXT NULL;

-- CreateIndex
CREATE UNIQUE INDEX `Review_authorId_serviceId_key` ON `Review`(`authorId`, `serviceId`);

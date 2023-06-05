const prisma = require('./prisma');

const createRecipe = (recipe) => {
  return prisma.recipes.create({
    data: {
      name: recipe.name,
      description: recipe.description,
      preparationTime: recipe.preparationTime,
      userId: recipe.userId,
    },
  });
};

const getOneRecipe = (userId, recipeId) => {
  return prisma.recipes.findFirst({
    select: {
      name: true,
      description: true,
      preparationTime: true,
      userId: true,
      user: true,
    },
    where: {
      userId,
      id: recipeId,
    },
  });
};

const getAllRecipes = (userId) => {
  return prisma.recipes.findMany({
    select: {
      name: true,
      description: true,
      preparationTime: true,
      userId: true,
      user: true,
    },
    where: {
      userId,
    },
  });
};

const editRecipe = (recipeId, recipe) => {
  return prisma.recipes.update({
    where: {
      id: recipeId,
    },
    data: recipe,
  });
};

const deleteRecipe = (recipeId) => {
  return prisma.recipes.delete({
    where: {
      id: recipeId,
    },
  });
};

module.exports = {
  createRecipe,
  getOneRecipe,
  getAllRecipes,
  editRecipe,
  deleteRecipe,
};

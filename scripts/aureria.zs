import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;

print("---------------aurorian start------------------");


val fluidExtractor = mods.gregtech.recipe.RecipeMap.getByName("fluid_extractor");
val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
val hardenedLeather = <harvestcraft:hardenedleatheritem>;
val solidifier = mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val forgeHammer = mods.gregtech.recipe.RecipeMap.getByName("forge_hammer");


    //furnace
recipes.remove(<theaurorian:aurorianfurnace>);
recipes.remove(<theaurorian:aurorianfurnacechimney>);

//remove diamond armor 
// mods.jei.JEI.removeAndHide(<minecraft:diamond_helmet>);
//mods.jei.JEI.removeAndHide(<minecraft:diamond_leggings>);
//mods.jei.JEI.removeAndHide(<minecraft:diamond_boots>);
//mods.jei.JEI.removeAndHide(<minecraft:diamond_chestplate>);
print("---------------aurorian end------------------");
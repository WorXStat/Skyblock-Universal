import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;

print("---------------vanillamc start------------------");


val fluidExtractor = mods.gregtech.recipe.RecipeMap.getByName("fluid_extractor");
val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
val hardenedLeather = <harvestcraft:hardenedleatheritem>;
val solidifier = mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val forgeHammer = mods.gregtech.recipe.RecipeMap.getByName("forge_hammer");


    //furnace
recipes.remove(<minecraft:furnace>);
recipes.remove(<hotornot:mitts>);
recipes.addShaped(<hotornot:mitts>, 
[[null,<harvestcraft:hardenedleatheritem>,null],
  [<harvestcraft:hardenedleatheritem>,null,<harvestcraft:hardenedleatheritem>],
  [<minecraft:flint>,<harvestcraft:hardenedleatheritem>,null]]);

    //remove diamond armor
mods.jei.JEI.removeAndHide(<minecraft:diamond_helmet>);
mods.jei.JEI.removeAndHide(<minecraft:diamond_leggings>);
mods.jei.JEI.removeAndHide(<minecraft:diamond_boots>);
mods.jei.JEI.removeAndHide(<minecraft:diamond_chestplate>);

//replaces items

print("---------------vanillamc end------------------");
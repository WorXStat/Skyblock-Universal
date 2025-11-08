import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Crucible;
import mods.astralsorcery.Utils;
import mods.botaniatweaks.Agglomeration;
import mods.botaniatweaks.AgglomerationRecipe;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder as mmBuilder;




print("---------------Botania Start------------------");

//disable manasteel armor

mods.jei.JEI.removeAndHide(<botania:manasteelhelm>);
mods.jei.JEI.removeAndHide(<botania:manasteelhelmreveal>);
mods.jei.JEI.removeAndHide(<botania:manasteelchest>);
mods.jei.JEI.removeAndHide(<botania:manasteellegs>);
mods.jei.JEI.removeAndHide(<botania:manasteelboots>);

//remove 3x3 shape craft for botania lamps
	recipes.remove(<botania:blazeblock>);

//disable flux field
mods.jei.JEI.removeAndHide(<botania:rfgenerator>);

//val items
val resonatingGem = <astralsorcery:itemcraftingcomponent:4>;
val marbleSlab = <astralsorcery:blockmarbleslab>;
val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");	
val compressor as RecipeMap = RecipeMap.getByName("compressor");
val alloyer = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val illuminationPowder = <astralsorcery:itemusabledust>;
val rockCrystal = mods.astralsorcery.Utils.getCrystalORIngredient(false, false);
val celestialCrystal = mods.astralsorcery.Utils.getCrystalORIngredient(true, false);
val manaPlate = <ore:plateManasteel>;
val attunedCelestialCrystal = mods.astralsorcery.Utils.getCrystalORIngredient(true,true);	
val manaDiamond = <botania:manaresource:2>;
val manaPearl = <botania:manaresource:1>;
val basicWand = <botania:twigwand>.withTag({color1: 0, color2: 0, boundTileZ: 0, boundTileX: 0, boundTileY: -1});
val manaPowder = <botania:manaresource:23>;

//cell block
recipes.remove(<botania:cellblock>);
recipes.addShaped(<botania:cellblock>*3, 
	[
	[<ore:plant>, <ore:plant>, <ore:plant>],
	[<ore:listAllmeatraw>, <ore:listAllveggie>, <ore:foodMushroom>]]);

//Conjuration Catalyst & Removals
mods.botania.ManaInfusion.removeRecipe(<minecraft:quartz>);
mods.botania.ManaInfusion.removeRecipe(<minecraft:redstone>);
mods.botania.ManaInfusion.removeRecipe(<minecraft:glowstone_dust>);
mods.botania.ManaInfusion.removeRecipe(<minecraft:coal>);
mods.botania.ManaInfusion.removeRecipe(<minecraft:snowball>);
mods.botania.ManaInfusion.removeRecipe(<minecraft:netherrack>);
mods.botania.ManaInfusion.removeRecipe(<minecraft:soul_sand>);

//infusion
mods.botania.Apothecary.addRecipe(<naturesaura:gold_fiber>, [<minecraft:gold_nugget>, <primal:plant_fiber>, <ore:treeLeaves>]);

mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:arcane_ashes>]);
mods.botania.ManaInfusion.addInfusion(<bloodmagic:arcane_ashes>,
	<enderio:item_material:20>, 1000);
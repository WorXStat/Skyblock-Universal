import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlock;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.gregtech.recipe.RecipeMaps;


print("---------------Gregtech Start------------------");

val brewery = mods.gregtech.recipe.RecipeMap.getByName("brewer");
val extruder = mods.gregtech.recipe.RecipeMap.getByName("extruder");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val implosion = mods.gregtech.recipe.RecipeMap.getByName("implosion_compressor");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val solidifier = mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier");
val chemReactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val forgeHammer = mods.gregtech.recipe.RecipeMap.getByName("forge_hammer");
val fluidExtractor = mods.gregtech.recipe.RecipeMap.getByName("fluid_extractor");
val extractor = mods.gregtech.recipe.RecipeMap.getByName("extractor");
val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
val electrolyzer = mods.gregtech.recipe.RecipeMap.getByName("electrolyzer");
val spinnyGoFast = mods.gregtech.recipe.RecipeMap.getByName("centrifuge");
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val wiremill = mods.gregtech.recipe.RecipeMap.getByName("wiremill");
var fusionReactor = mods.gregtech.recipe.RecipeMap.getByName("fusion_reactor");
val chemical_bath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
val lathe = mods.gregtech.recipe.RecipeMap.getByName("lathe");
val cracker = mods.gregtech.recipe.RecipeMap.getByName("cracker");
val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
val vacfreezer = mods.gregtech.recipe.RecipeMap.getByName("vacuum_freezer");
val thermalCent = mods.gregtech.recipe.RecipeMap.getByName("thermal_centrifuge");
val cutting_saw = mods.gregtech.recipe.RecipeMap.getByName("cutting_saw");
val assembly_line = mods.gregtech.recipe.RecipeMap.getByName("assembly_line");
val distillery = mods.gregtech.recipe.RecipeMap.getByName("distillery");
val distillation_tower = mods.gregtech.recipe.RecipeMap.getByName("distillery");

	//brick

furnace.remove(<minecraft:brick>, <moreplanets:infected_clay_ball>);
furnace.remove(<minecraft:brick>, <mist:clay_ball>);
furnace.remove(<minecraft:brick>, <mist:clay_ball:1>);
	#glass
macerator.recipeBuilder()
	.inputs(<ore:blockGlass>)
	.outputs(<gregtech:meta_item_1:2209>)
	.duration(30)
	.EUt(8)
	.buildAndRegister();
	#mercury
fluidExtractor.recipeBuilder()
    .inputs(<ore:itemCinnabar>)
	.fluidOutputs(<liquid:mercury>* 144)
	.duration(80)
	.EUt(20)
	.buildAndRegister();

	fluidExtractor.recipeBuilder()
    .inputs(<extraplanets:compressed_mercury>)
	.fluidOutputs(<liquid:mercury>* 144)
	.duration(80)
	.EUt(20)
	.buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<ore:nuggetCinnabar>)
	.fluidOutputs(<liquid:mercury>* 16)
	.duration(8)
	.EUt(20)
	.buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<ore:blockMercury>)
	.fluidOutputs(<liquid:mercury>* 1296)
	.duration(8)
	.EUt(20)
	.buildAndRegister();
	//plantball
recipes.remove(<gregtech:meta_item_2:32570>);

compressor.recipeBuilder()
	.inputs(<ore:plant>*8)
	.outputs(<gregtech:meta_item_2:32570>)
	.duration(300)
	.EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:listAllveggie>*8)
	.outputs(<gregtech:meta_item_2:32570>)
	.duration(300)
	.EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:listAllgrain>*8)
	.outputs(<gregtech:meta_item_2:32570>)
	.duration(300)
	.EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:foodMushroom>*8)
	.outputs(<gregtech:meta_item_2:32570>)
	.duration(300)
	.EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:treeSapling>*8)
	.outputs(<gregtech:meta_item_2:32570>)
	.duration(300)
	.EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:blockCactus>*8)
	.outputs(<gregtech:meta_item_2:32570>)
	.duration(300)
	.EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:sugarcane>*8)
	.outputs(<gregtech:meta_item_2:32570>)
	.duration(300)
	.EUt(2)
	.buildAndRegister();
	//sulfur
macerator.recipeBuilder()
	.inputs(<ore:gemSulfur>)
	.outputs(<gregtech:meta_item_1:2065>* 4)
	.duration(80)
	.EUt(6)
	.buildAndRegister();

	   #Steam Alloy Smelter
recipes.remove(<gregtech:machine:17>);
recipes.addShaped(<gregtech:machine:17>, [
	[<ore:pipeSmallBronze>, <ore:pipeSmallBronze>, <ore:pipeSmallBronze>],
	[<ceramics:clay_barrel>, <gregtech:machine_casing:11>, <ceramics:clay_barrel>],
	[<ore:pipeSmallBronze>, <ore:pipeSmallBronze>, <ore:pipeSmallBronze>]]);

   #Steam Alloy Smelter - High Pressure
recipes.remove(<gregtech:machine:18>);
recipes.addShaped(<gregtech:machine:18>, [
	[<ore:pipeSmallSteel>, <ore:pipeSmallSteel>, <ore:pipeSmallSteel>],
	[<ceramics:clay_barrel>, <gregtech:machine_casing:13>, <ceramics:clay_barrel>],
	[<ore:pipeSmallSteel>, <ore:pipeSmallSteel>, <ore:pipeSmallSteel>]]);

	#Steam Coal Boiler
recipes.remove(<gregtech:machine:1>);
recipes.addShaped(<gregtech:machine:1>, [
	[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>],
	[<ore:plateBronze>, <gregtech:meta_tool:6>, <ore:plateBronze>],
	[<minecraft:brick_block>, <minecraft:stone_slab:4>, <minecraft:brick_block> ]]);

	#Steam Coal Boiler / High Pressure
recipes.remove(<gregtech:machine:2>);
recipes.addShaped(<gregtech:machine:2>, [
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
	[<ore:plateSteel>, <gregtech:meta_tool:6>, <ore:plateSteel>],
	[<minecraft:brick_block>, <minecraft:stone_slab:4>, <minecraft:brick_block>]]);


	#Steam Furnace
recipes.remove(<gregtech:machine:15>);
recipes.addShaped(<gregtech:machine:15>,[
	[<ore:pipeSmallBronze>, <ore:pipeSmallBronze>, <ore:pipeSmallBronze>],
	[<ore:pipeSmallBronze>, <gregtech:machine_casing:11>, <ore:pipeSmallBronze>],
	[<ore:pipeSmallBronze>, <minecraft:stone_slab:4>, <ore:pipeSmallBronze>]]);

	#Steam Furnace - High Pressure
recipes.remove(<gregtech:machine:16>);
recipes.addShaped(<gregtech:machine:16>,[
	[<ore:pipeSmallSteel>, <ore:pipeSmallSteel>, <ore:pipeSmallSteel>],
	[<ore:pipeSmallSteel>, <gregtech:machine_casing:13>, <ore:pipeSmallSteel>],
	[<ore:pipeSmallSteel>, <minecraft:stone_slab:4>, <ore:pipeSmallSteel>]]);
	#sand
	recipes.addShaped(<gtadditions:ga_meta_item:32032> * 3, [
	[<ore:itemClay>, <ore:itemClay>, <ore:itemClay>], 
	[<ore:sand>, <ore:formWood>, <ore:sand>], 
	[<ore:sand>, <ore:sand>, <ore:sand>]]);
	
	#sticky resin
	furnace.addRecipe(<gregtech:meta_item_1:32627>, <ore:slimeball>, 0);
	#PAPER
	recipes.addShaped("MADEBYME1", <gregtech:meta_item_1:2325> * 2, [[<ore:sugarcane>, <ore:sugarcane>, <ore:sugarcane>], [null, <gregtech:meta_tool:12>, null]]);

	#SUGAR
	recipes.addShaped("MADEBYME2", <minecraft:sugar>, [[<ore:sugarcane>, <gregtech:meta_tool:12>, null]]);

print("----------------Gregtech End-------------------");

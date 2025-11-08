import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.primaltech.ClayKiln;
import mods.primaltech.StoneAnvil;
import mods.primaltech.WaterSaw;
import mods.primaltech.WoodenBasin;
import mods.bloodmagic.AlchemyArray;

print("------------Pam's harvestcraft Start------------------");
val centrifuge = mods.gregtech.recipe.RecipeMap.getByName("centrifuge");

val fruitBait = <harvestcraft:fruitbaititem>;
val grainBait = <harvestcraft:grainbaititem>;
val veggieBait = <harvestcraft:veggiebaititem>;
val cookingOil = <harvestcraft:oliveoilitem>;

    //Bait - Fish
recipes.remove(<harvestcraft:fishtrapbaititem>);
recipes.addShapeless(<harvestcraft:fishtrapbaititem> * 4, 
	[<ore:string>, <ore:string>, <ore:string>, <ore:listAllfishraw>]);

	//Bait - Fruit
recipes.remove(fruitBait);
recipes.addShapeless(fruitBait * 4, 
	[<ore:string>, <ore:string>, <ore:string>, <ore:listAllfruit>]);

recipes.remove(fruitBait);
recipes.addShapeless(fruitBait * 4, 
	[<ore:string>, <ore:string>, <ore:string>, <ore:listAllberry>]);

	//Bait - Grain
recipes.remove(grainBait);
grainBait.addTooltip("You can get beef.");
recipes.addShapeless(grainBait * 4, 
	[<ore:string>, <ore:string>, <ore:string>, <ore:listAllgrain>]);
recipes.addShapeless(grainBait * 4, 
	[<ore:string>, <ore:string>, <ore:string>, <ore:cropRice>]);

	//Bait - Veggie
recipes.remove(veggieBait);
veggieBait.addTooltip("You can't get beef.");
recipes.addShapeless(veggieBait * 4, 
	[<ore:string>, <ore:string>, <ore:string>, <ore:listAllveggie>]);

    //Bakeware - moving certain recipes from 
recipes.remove(<harvestcraft:bakedsweetpotatoitem>);
furnace.addRecipe(<harvestcraft:bakedsweetpotatoitem>, <harvestcraft:sweetpotatoitem>);

    //Toast
recipes.remove(<harvestcraft:toastitem>);
furnace.addRecipe(<harvestcraft:toastitem>, <minecraft:bread>);

furnace.remove(<actuallyadditions:item_food:10>);
recipes.remove(<harvestcraft:vanillabeanitem>, <harvestcraft:vanillaitem>);



#Water Basin
	#mods.primaltech.WoodenBasin.addRecipe(IItemStack output, <minecraft:water>, IIngredient[] ingredients);
	
    //Butter
recipes.remove(<harvestcraft:butteritem>);
mods.primaltech.WoodenBasin.addRecipe(<harvestcraft:butteritem> * 8, 
	<liquid:milk>, []);

    //Cheese
recipes.remove(<harvestcraft:cheeseitem>);
mods.primaltech.WoodenBasin.addRecipe(<harvestcraft:cheeseitem> * 10, 
	<liquid:milk>, [<ore:dustSalt>,<ore:foodVinegar>]);
mods.primaltech.WoodenBasin.addRecipe(<harvestcraft:cheeseitem> * 10, 
	<liquid:milk>, [<ore:dustSalt>,<erebus:bambucket:16>]);	
	mods.primaltech.WoodenBasin.addRecipe(<harvestcraft:cheeseitem> * 10, 
	<liquid:milk>, [<ore:dustSalt>,<ore:listAllcitrus>]);	


    //Dough
recipes.remove(<harvestcraft:doughitem>);
mods.primaltech.WoodenBasin.addRecipe(<harvestcraft:doughitem> * 4, 
	<liquid:water>, [<ore:dustWheat>, <ore:dustSalt>]);
mods.primaltech.WoodenBasin.addRecipe(<harvestcraft:doughitem> * 4, 
	<liquid:water>, [<ore:dustSalt>, <ore:dustWheat>]);

mods.gregtech.recipe.RecipeMap.getByName("mixer").recipeBuilder()
    .inputs([<ore:dustWheat>, <ore:dustSalt>])
    .fluidInputs([<liquid:water> * 100])
    .outputs(<harvestcraft:doughitem> *4)
    .duration(160)
    .EUt(16)
    .buildAndRegister();

    //candles
recipes.remove(<harvestcraft:candledeco1>);
recipes.addShapeless(<harvestcraft:candledeco1> *4, [<ore:materialPressedwax>, <ore:string>]);

    //candleberry seed


//flour
recipes.remove(<harvestcraft:flouritem>);

    //fresh milk from clay bucket
recipes.removeByRecipeName("harvestcraft:freshmilkitem_minecraft_milk_bucket");
RecipeBuilder.get("basic")
	.setShaped([
		[null, null, null],
		[null, <harvestcraft:potitem>.reuse(), null],
		[null, null, null]])
	.setFluid(<liquid:milk> * 1000)
	.addOutput(<harvestcraft:freshmilkitem> * 4)
	.create();

mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier").recipeBuilder()
  .fluidInputs([<liquid:milk> * 250])
  .notConsumable(<metaitem:shape.mold.cylinder>)
  .outputs(<harvestcraft:freshmilkitem>)
  .duration(80)
  .EUt(16)
  .buildAndRegister();

    //Fresh water
RecipeBuilder.get("basic")
	.setShaped([
		[null, null, null],
		[null, <harvestcraft:potitem>.reuse(), null],
		[null, null, null]])
	.setFluid(<liquid:water> * 500)
	.addOutput(<harvestcraft:freshwateritem> * 4)
	.create();

mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier").recipeBuilder()
  .fluidInputs([<liquid:water> * 250])
  .notConsumable(<metaitem:shape.mold.cylinder>)
  .outputs(<harvestcraft:freshwateritem>)
  .duration(80)
  .EUt(16)
  .buildAndRegister();

    //Gardens
recipes.addShaped(<rustic:condenser>, [[null, <minecraft:brick>, null], [<minecraft:brick>, <ceramics:clay_bucket>, <minecraft:brick>], [<minecraft:brick>, <minecraft:stained_hardened_clay>, <minecraft:brick>]]);


mods.rustic.Condenser.addRecipe(<harvestcraft:aridgarden>, <cyclicmagic:apple_emerald>, <minecraft:sapling:4>);
mods.rustic.Condenser.addRecipe(<harvestcraft:frostgarden>, <cyclicmagic:apple_emerald>, <minecraft:sapling:1>);
mods.rustic.Condenser.addRecipe(<harvestcraft:shadedgarden>, <cyclicmagic:apple_emerald>, <minecraft:sapling:5>);
mods.rustic.Condenser.addRecipe(<harvestcraft:soggygarden>, <cyclicmagic:apple_emerald>, <minecraft:sapling:2>);
mods.rustic.Condenser.addRecipe(<harvestcraft:tropicalgarden>, <cyclicmagic:apple_emerald>, <minecraft:sapling:3>);
mods.rustic.Condenser.addRecipe(<harvestcraft:windygarden>, <cyclicmagic:apple_emerald>, <minecraft:sapling>);

    //Grinder (removed only purpose is doubling of raw meats)
mods.jei.JEI.removeAndHide(<harvestcraft:grinder>);

mods.gregtech.recipe.RecipeMap.getByName("macerator").findRecipe(16, [<minecraft:beef>], []).remove();
mods.gregtech.recipe.RecipeMap.getByName("macerator").findRecipe(16, [<minecraft:porkchop>], []).remove();
mods.gregtech.recipe.RecipeMap.getByName("macerator").findRecipe(16, [<minecraft:rabbit>], []).remove();
mods.gregtech.recipe.RecipeMap.getByName("macerator").findRecipe(16, [<minecraft:chicken>], []).remove();
mods.gregtech.recipe.RecipeMap.getByName("macerator").findRecipe(16, [<minecraft:mutton>], []).remove();

var groundMeatMap as IItemStack[IIngredient] = {
	<harvestcraft:rawtofeakitem> | 
    <minecraft:beef> |
    <emergingtechnology:syntheticcowraw> |
    <blue_skies:raw_azulfo_beef> |
	<moreplanets:raw_cheese_beef>
    : <harvestcraft:groundbeefitem>,
	<harvestcraft:rawtofickenitem> |
    <emergingtechnology:syntheticchickenraw> |
    <minecraft:chicken> |
	<contenttweaker:raw_moameat>
    : <harvestcraft:groundchickenitem>,
	<harvestcraft:rawtofuduckitem> | <harvestcraft:duckrawitem>
	: <harvestcraft:groundduckitem>,
	<minecraft:fish> |
	<minecraft:fish:1> |
	<minecraft:fish:2> |
	<minecraft:fish:3> |
	<minecraft:cod> |
	<minecraft:salmon> |
	<minecraft:clownfish> |
	<minecraft:pufferfish> |
	<harvestcraft:calamarirawitem> |
	<harvestcraft:anchovyrawitem> |
	<harvestcraft:bassrawitem> |
	<harvestcraft:carprawitem> |
	<harvestcraft:catfishrawitem> |
	<harvestcraft:charrrawitem> |
	<harvestcraft:grouperrawitem> |
	<harvestcraft:herringrawitem> |
	<harvestcraft:mudfishrawitem> |
	<harvestcraft:perchrawitem> |
	<harvestcraft:snapperrawitem> |
	<harvestcraft:tilapiarawitem> |
	<harvestcraft:troutrawitem> |
	<harvestcraft:tunarawitem> |
	<harvestcraft:walleyerawitem> |
	<harvestcraft:greenheartfishitem> |
	<harvestcraft:rawtofishitem> |
	<harvestcraft:sardinerawitem> |
    <thebetweenlands:angler_meat_raw> |
	<mist:swim_bladder> |
    <sakura:foodset:141>|
	<moreplanets:zelius_fish>|
	<moreplanets:glowing_alien_fish>|
	<moreplanets:cheese_fish>
	: <harvestcraft:groundfishitem>,
	<harvestcraft:rawtofuttonitem> | 
    <minecraft:mutton> |
    <primal:ovis_meat_raw>
    : <harvestcraft:groundmuttonitem>,
	<harvestcraft:rawtofaconitem> | 
    <minecraft:porkchop> |
    <emergingtechnology:syntheticpigraw>|
	<theaurorian:aurorianpork>
    : <harvestcraft:groundporkitem>,
	<harvestcraft:rawtofabbititem> |
	<minecraft:rabbit>|
	<contenttweaker:raw_aerbunny_meat>
	: <harvestcraft:groundrabbititem>,
	<harvestcraft:rawtofurkeyitem> | 
	<harvestcraft:turkeyrawitem>
	: <harvestcraft:groundturkeyitem>,
	<harvestcraft:rawtofenisonitem> | 
    <harvestcraft:venisonrawitem> |
    <blue_skies:raw_venison>|
	<midnight:raw_stag_flank>
    : <harvestcraft:groundvenisonitem>,
	<atum:camel_raw>|
	<erebus:erebus_food:12>|
	<everythingbad:jesus_meat_raw>|
	<mist:meat_food>|
	<mist:meat_food:1>|
	<mist:meat_food:2>|
	<mist:meat_food:3>|
	<mist:meat_food:4>|
	<mist:meat_food:5>|
	<mist:meat_food:6>|
	<mist:meat_food:7>|
	<mist:meat_food:8>|
	<mist:meat_food:9>|
	<mist:meat_food:10>|
	<mist:meat_food:11>|
	<mist:meat_food:12>|
	<mist:meat_food:13>|
	<ore:foodFrograw>|
	<ore:foodSnailraw>|
	<moreplanets:raw_shlime_meat>|
	<gaiadimension:lurmorus_meat>|
	<gaiadimension:luggeroth_chop>|
	<contenttweaker:raw_whalemeat>
	: <contenttweaker:mysteriousmeat>
};

for raw, ground in groundMeatMap {

	recipes.addShapeless(ground, [<ore:craftingToolKnife>.reuse().transformDamage(10), 
	<gregtech:meta_tool:12>,raw]);

	


	mods.gregtech.recipe.RecipeMap.getByName("macerator").recipeBuilder()
		.inputs([raw])
		.outputs([ground])
		.chancedOutput(ground, 7500, 1000)
		.duration(40)
		.EUt(16)
		.buildAndRegister();

	mods.gregtech.recipe.RecipeMap.getByName("macerator").recipeBuilder()
		.inputs([ground])
		.outputs([<ore:dustMeat>.firstItem])
		.duration(40)
		.EUt(16)
		.buildAndRegister();
}
furnace.addRecipe(<contenttweaker:cooked_moameat>, <contenttweaker:raw_moameat>,0.35);
furnace.addRecipe(<contenttweaker:cooked_aerbunny_meat>, <contenttweaker:raw_aerbunny_meat>,0.35);
furnace.addRecipe(<contenttweaker:cooked_whalemeat>, <contenttweaker:raw_whalemeat>,0.35);

    //presser revamp
var presserRecipes as IItemStack[][IIngredient] = {
	<ore:cropCherry> : [<harvestcraft:cherryjuiceitem>, fruitBait ],
	<ore:cropPear> : [<harvestcraft:pearjuiceitem>, fruitBait],
	<ore:cropSoybean> : [<harvestcraft:silkentofuitem>, grainBait],
	<minecraft:apple> : [<harvestcraft:applejuiceitem>, fruitBait],
	<harvestcraft:sunflowerseedsitem> : [cookingOil, grainBait],
	<harvestcraft:silkentofuitem> : [<harvestcraft:firmtofuitem>, <harvestcraft:soymilkitem>],
	<harvestcraft:persimmonitem> : [<harvestcraft:persimmonjuiceitem>, fruitBait],
	<ore:cropStrawberry> : [<harvestcraft:strawberryjuiceitem>, fruitBait],
	<minecraft:pumpkin_seeds> : [cookingOil, grainBait],
	<ore:cropGrape> : [<harvestcraft:grapejuiceitem>, fruitBait],
	<harvestcraft:almonditem> : [<harvestcraft:freshmilkitem>, grainBait],
	<ore:cropPlum> : [<harvestcraft:plumjuiceitem>, fruitBait],
	<harvestcraft:starfruititem> : [<harvestcraft:starfruitjuiceitem>, fruitBait],
	<ore:cropBlueberry> : [<harvestcraft:blueberryjuiceitem>, fruitBait],
	<minecraft:carrot> : [<harvestcraft:carrotjuiceitem>, grainBait],
	<harvestcraft:mustardseedsitem> : [cookingOil, grainBait],
	<harvestcraft:freshwateritem> : [<harvestcraft:bubblywateritem>, <harvestcraft:bubblywateritem>],
	<harvestcraft:papayaitem> : [<harvestcraft:papayajuiceitem>, fruitBait],
	<harvestcraft:apricotitem> : [<harvestcraft:apricotjuiceitem>, fruitBait],
	<harvestcraft:limeitem> : [<harvestcraft:limejuiceitem>, fruitBait],
	<harvestcraft:tealeafitem> : [cookingOil, grainBait],
	<harvestcraft:avocadoitem> : [cookingOil, veggieBait],
	<ore:cropPumpkin> : [cookingOil, veggieBait],
	<harvestcraft:kiwiitem> : [<harvestcraft:kiwijuiceitem>, fruitBait],
	<ore:cropOlive> : [cookingOil, fruitBait],
	<ore:cropBlackberry> : [<harvestcraft:blackberryjuiceitem>, fruitBait],
	<harvestcraft:orangeitem> : [<harvestcraft:orangejuiceitem>, fruitBait],
	<harvestcraft:grapefruititem> : [<harvestcraft:grapefruitjuiceitem>, fruitBait],
	<harvestcraft:mangoitem> : [<harvestcraft:mangojuiceitem>, fruitBait],
	<harvestcraft:pomegranateitem> : [<harvestcraft:pomegranatejuiceitem>, fruitBait],
	<harvestcraft:cranberryitem> : [<harvestcraft:cranberryjuiceitem>, fruitBait],
	<harvestcraft:coconutitem> : [<harvestcraft:coconutmilkitem>, veggieBait],
	<ore:cropRaspberry> : [<harvestcraft:raspberryjuiceitem>, fruitBait],
	<harvestcraft:sesameseedsseeditem> : [cookingOil, grainBait],
	<ore:itemHoneyComb> : [<harvestcraft:honeyitem>, <harvestcraft:beeswaxitem>],	 
	<harvestcraft:cactusfruititem> : [<harvestcraft:cactusfruitjuiceitem>, fruitBait],	 
	<harvestcraft:beetitem> : [<minecraft:sugar>, veggieBait],
	<ore:cropFig> : [<harvestcraft:figjuiceitem>, fruitBait],
	<harvestcraft:waxcombitem> : [<harvestcraft:beeswaxitem>, <harvestcraft:beeswaxitem>],
	<harvestcraft:walnutitem> : [cookingOil, grainBait],
	<ore:cropCotton> : [cookingOil, grainBait],
	<ore:cropPeach> : [<harvestcraft:peachjuiceitem>, fruitBait]
};

    //remove presser
mods.jei.JEI.removeAndHide(<harvestcraft:presser>);

for inputs, product in presserRecipes {
	centrifuge.recipeBuilder()
		.inputs(inputs)
		.outputs([product[0],product[1]])
		.duration(100)
		.EUt(8)
		.buildAndRegister();
}


    //Market
mods.jei.JEI.removeAndHide(<harvestcraft:market>);

//remove hardened leather armor
//mods.jei.JEI.removeAndHide(<harvestcraft:hardenedleatherhelmitem>);
//mods.jei.JEI.removeAndHide(<harvestcraft:hardenedleatherchestitem>);
//mods.jei.JEI.removeAndHide(<harvestcraft:hardenedleatherleggingsitem>);
//mods.jei.JEI.removeAndHide(<harvestcraft:hardenedleatherbootsitem>);

	//Salt
<harvestcraft:saltitem>.addTooltip(format.darkRed("salty!"));
recipes.remove(<harvestcraft:saltitem>);
recipes.addShapeless(<ore:dustSalt>.firstItem, [<harvestcraft:saltitem>]);
RecipeBuilder.get("basic")
	.setShaped([
		[null, null, null],
		[null, <harvestcraft:wovencottonitem>.reuse(), null],
		[null, null, null]])
	.setFluid(<liquid:water> * 250)
	.addOutput(<harvestcraft:saltitem>)
	.create();

	//Shipping Bin
mods.jei.JEI.removeAndHide(<harvestcraft:shippingbin>);

	//Trap - Water
recipes.remove(<harvestcraft:watertrap>);
recipes.addShaped(<harvestcraft:watertrap>, 
	[[<ore:stickWood>, <minecraft:fishing_rod>, <ore:stickWood>],
	[<ore:string>, <ore:chest>, <ore:string>], 
	[<ore:stickWood>, <ore:string>, <ore:stickWood>]]);

	// silken tofu
RecipeBuilder.get("basic")
	.setShapeless([<harvestcraft:silkentofuitem>, <minecraft:bowl>.reuse()])
	.addTool(<ore:craftingToolHardHammer>, 2)
	.setFluid(<liquid:water>*50)
	.addOutput(<harvestcraft:firmtofuitem>)
	.create();
	
	//Firm tofu
RecipeBuilder.get("basic")
	.setShapeless([<ore:cropSoybean>, <minecraft:bowl>.reuse()])
	.addTool(<ore:craftingToolHardHammer>, 2)
	.setFluid(<liquid:water>*50)
	.addOutput(<harvestcraft:silkentofuitem>)
	.create();
	
	//Trap - Ground
<harvestcraft:groundtrap>.addTooltip(format.darkRed("Requires vanilla grass or dirt on all sides."));
recipes.remove(<harvestcraft:groundtrap>);	
recipes.addShaped(<harvestcraft:groundtrap>, 
	[[<ore:stickWood>, <ore:trapdoorWood>, <ore:stickWood>],
	[<ore:string>, <ore:chest>, <ore:string>], 
	[<ore:stickWood>, <ore:string>, <ore:stickWood>]]);

	//water filter
mods.jei.JEI.removeAndHide(<harvestcraft:waterfilter>);

	//wool
recipes.removeByRecipeName("harvestcraft:wool_0");

print("----------------Pam's Harvestcraft End-------------------");
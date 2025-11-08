
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMaps;

print("test");
val jamfruits = <ore:jamFruits>;
//oh i cannot write anything !!!!!!!!!!!!!
//this is practice.
val atclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
var jamrecipes as IItemStack[IIngredient] = {

<ore:cropStrawberry>
:<harvestcraft:strawberryjellyitem>,
<ore:cropOrange>
:<harvestcraft:orangejellyitem>,
<harvestcraft:gooseberryitem>
:<harvestcraft:gooseberryjellyitem>,
<ore:cropBlackberry>
:<harvestcraft:blackberryjellyitem>,
<ore:cropBlueberry>
:<harvestcraft:blueberryjellyitem>,
<harvestcraft:mangoitem>
:<harvestcraft:mangojellyitem>,
<harvestcraft:kiwiitem>
:<harvestcraft:kiwijellyitem>,
<ore:cropLemon>
:<harvestcraft:lemonjellyitem>,
<harvestcraft:cranberryitem>
:<harvestcraft:cranberryjellyitem>,
<harvestcraft:grapefruititem>
:<harvestcraft:grapefruitjellyitem>,
<harvestcraft:pomegranateitem>
:<harvestcraft:pomegranatejellyitem>,
<harvestcraft:persimmonitem>
:<harvestcraft:persimmonjellyitem>,
<ore:cropRaspberry>
:<harvestcraft:raspberryjellyitem>,
<harvestcraft:limeitem>
:<harvestcraft:limejellyitem>,
<ore:cropPeach>
:<harvestcraft:peachjellyitem>,
<ore:cropFig>
:<harvestcraft:figjellyitem>,
<minecraft:melon>
:<harvestcraft:watermelonjellyitem>,
<ore:cropApricot>
:<harvestcraft:apricotjellyitem>,
<harvestcraft:starfruititem>
:<harvestcraft:starfruitjellyitem>,
<ore:cropCherry>
:<harvestcraft:cherryjellyitem>,
<harvestcraft:peppercornitem>
:<harvestcraft:pepperjellyitem>,
<ore:cropPear>
:<harvestcraft:pearjellyitem>,
<ore:cropPlum>
:<harvestcraft:plumjellyitem>,
<theaurorian:silkberry>
:<theaurorian:silkberryjam>

};
for fruits,jam in jamrecipes  {

recipes.remove(jam);

recipes.addShapeless(jam,[fruits,<ore:listAllsugar>*2,<ore:toolSaucepan>.reuse(),<minecraft:glass_bottle>]);

    atclave.recipeBuilder()
	.inputs([fruits])
	.fluidInputs([<liquid:honey> * 100])
	.outputs([jam* 1])
	.duration(180)
	.EUt(4)
	.buildAndRegister();	

    atclave.recipeBuilder()
	.inputs([fruits])
	.fluidInputs([<liquid:sakura.maple_syrup> * 100])
	.outputs([jam* 1])
	.duration(180)
	.EUt(4)
	.buildAndRegister();	

	atclave.recipeBuilder()
	.inputs([fruits])
	.fluidInputs([<liquid:sugarwater> * 100])
	.outputs([jam* 1])
	.duration(180)
	.EUt(4)
	.buildAndRegister();	
jamfruits.add(jam);
}

print("end");
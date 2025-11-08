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
import mods.primaltech.WoodenBasin;
import mods.sakura.Barrel;
import mods.sakura.campfirePot;
import mods.sakura.Distillation;
import mods.sakura.liquid_to_itemStack;
import mods.sakura.stoneMorter;

print("------------sakura Start------------------");

 //tatara
recipes.remove(<sakura:tatara>);

//flours
var flourMap as IItemStack[IIngredient] = {
    <ore:cropRice>
    : <sakura:materials:16>,
    <sakura:buckwheat>
    : <sakura:materials:5>,
    <ore:cropTea>
    : <sakura:materials:43>,
    <sakura:materials:18>
    : <sakura:materials:27>,
    <ore:foodBread>
    : <sakura:materials:30>,
    <sakura:materials:19>
    : <sakura:materials:28>,
    <sakura:foodset:145>
    : <sakura:foodset:146>,
    <moreplanets:infected_wheat>|
    <minecraft:wheat>
    :<gregtech:meta_item_1:2345>,
    <atum:emmer>
    :<atum:emmer_flour>,
    <ore:grainRaw>
    :<contenttweaker:whole_flour>

};
for itemraw, flour in flourMap {

recipes.addShapeless(flour, [<gregtech:meta_tool:12>,itemraw]);

mods.gregtech.recipe.RecipeMap.getByName("macerator").recipeBuilder()
		.inputs([itemraw])
		.outputs([flour])
		.chancedOutput(flour, 7500, 1000)
		.duration(40)
		.EUt(16)
		.buildAndRegister();
    }
 print("------------sakura end------------------");   
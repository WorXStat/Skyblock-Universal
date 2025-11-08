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
import mods.sakura.stoneMorter;

print("------------powder Start------------------");


//flours
var ingottopowder as IItemStack[IIngredient] = {
   
    <enderio:item_alloy_ingot:7> 
	:<enderio:item_material:74>

};
for ingot, powder in ingottopowder {

recipes.addShapeless(powder, [<gregtech:meta_tool:12>,ingot]);

mods.gregtech.recipe.RecipeMap.getByName("macerator").recipeBuilder()
		.inputs([ingot])
		.outputs([powder])
		.chancedOutput(powder, 7500, 1000)
		.duration(40)
		.EUt(16)
		.buildAndRegister();
    }
 print("------------powder end------------------");   
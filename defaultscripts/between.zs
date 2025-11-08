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

print("--------------- between Start------------------");


recipes.remove(<thebetweenlands:bl_bucket>);
recipes.addShaped(<thebetweenlands:bl_bucket>,
 [[null,<ore:string>,null],
  [<ore:plankWood>,null,<ore:plankWood>],
  [null,<ore:plankWood>,null]]);
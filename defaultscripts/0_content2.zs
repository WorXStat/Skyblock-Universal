#loader contenttweaker
#modloaded chickens
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Part;
import mods.contenttweaker.MaterialPart;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.PartBuilder;
import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.Chicken;
import mods.contenttweaker.ChickenFactory;
import mods.contenttweaker.ResourceLocation as resLoc;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.recipes.IFurnaceRecipe;

print("--------------- Content Start------------------");

//food
var mysteriousmeat = VanillaFactory.createItem("mysteriousmeat");
mysteriousmeat.creativeTab = (<creativetab:harvestCraft>);
mysteriousmeat.register();

//moa
val raw_moameat= VanillaFactory.createItemFood("raw_moameat", 1);
raw_moameat.setSaturation(1.2);
raw_moameat.setCreativeTab(<creativetab:harvestCraft>);
raw_moameat.register();

val cooked_moameat= VanillaFactory.createItemFood("cooked_moameat", 2);
cooked_moameat.setSaturation(2.4);
cooked_moameat.setCreativeTab(<creativetab:harvestCraft>);
cooked_moameat.register();



//rabbit

val raw_aerbunny_meat= VanillaFactory.createItemFood("raw_aerbunny_meat", 1);
raw_aerbunny_meat.setSaturation(1.2);
raw_aerbunny_meat.setCreativeTab(<creativetab:harvestCraft>);
raw_aerbunny_meat.register();

val cooked_aerbunny_meat= VanillaFactory.createItemFood("cooked_aerbunny_meat", 2);
cooked_aerbunny_meat.setSaturation(2.4);
cooked_aerbunny_meat.setCreativeTab(<creativetab:harvestCraft>);
cooked_aerbunny_meat.register();



//whale

val raw_whalemeat= VanillaFactory.createItemFood("raw_whalemeat", 1);
raw_whalemeat.setSaturation(2.4);
raw_whalemeat.setCreativeTab(<creativetab:harvestCraft>);
raw_whalemeat.register();

val cooked_whalemeat= VanillaFactory.createItemFood("cooked_whalemeat", 2);
cooked_whalemeat.setSaturation(2.6);
cooked_whalemeat.setCreativeTab(<creativetab:harvestCraft>);
cooked_whalemeat.register();



//grain
val whole_flour= VanillaFactory.createItem("whole_flour");
whole_flour.creativeTab = (<creativetab:harvestCraft>);
whole_flour.register();


//sugarwater
var sugarwater = VanillaFactory.createFluid("sugarwater", Color.fromHex("E0FFFF"));
sugarwater.density = 1500;
sugarwater.viscosity = 1500;
sugarwater.vaporize = true;
sugarwater.register();


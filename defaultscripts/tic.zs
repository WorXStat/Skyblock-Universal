import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.tconstruct.Casting;
import mods.gregtech.recipe.RecipeMap;
import mods.thaumcraft.Crucible;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;
import mods.artisanworktables.builder.RecipeBuilder;
print("----------------tic start------------------");

#Seared Furnace
recipes.remove(<tconstruct:seared_furnace_controller>);

RecipeBuilder.get("basic")
  .setShaped([
    [<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>],
    [<galacticraftcore:canister:1>, <galacticraftcore:canister:1>, <galacticraftcore:canister:1>],
    [<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>]])
  .setFluid(<liquid:clay> * 1000)
  .addTool(<ore:craftingToolHardHammer>,50)
  .addOutput(<tconstruct:seared_furnace_controller>)
  .create();
  recipes.remove(<tcomplement:porcelain_melter:8>);
  recipes.addShaped(<tcomplement:porcelain_melter:8>, 
  [[null, <ceramics:unfired_clay:5>, null],
  [<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>], 
  [<ceramics:unfired_clay:5>, <primal_tech:clay_kiln>, <ceramics:unfired_clay:5>]]);

  recipes.remove(<tcomplement:porcelain_casting>);

//mercury

mods.tconstruct.Casting.addTableRecipe(<thaumcraft:quicksilver>, <tconstruct:cast>.withTag({PartType: "tconstruct:pan_head"}), <liquid:mercury>, 144);
mods.tconstruct.Melting.addRecipe(<liquid:mercury> * 16,<ore:nuggetCinnabar>, 300);
mods.tconstruct.Melting.addRecipe(<liquid:mercury> * 144,<ore:itemCinnabar>, 300);

//forge
<ore:toolForge>.add(<tconstruct:toolforge>);
<ore:partsBuilder>.add(<tconstruct:tooltables:2>);
<ore:stencilTable>.add(<tconstruct:tooltables:1>);
  print("----------------tic end------------------");
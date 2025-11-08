import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
import mods.primaltech.ClayKiln;
import mods.primaltech.StoneAnvil;
import mods.primaltech.WaterSaw;
import mods.primaltech.WoodenBasin;
import mods.gregtech.recipe.RecipeMaps;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.industrialforegoing.Extractor;

print("---------------craftwood start------------------");


val cutting_saw = mods.gregtech.recipe.RecipeMap.getByName("cutting_saw");
//plank
var woodtoplank as IItemStack[IIngredient] = {
    <minecraft:log>|
    <primal:logs_stripped>
    : <minecraft:planks>,
    <minecraft:log:1>|
    <primal:logs_stripped:1>
    : <minecraft:planks:1>,
    <minecraft:log:2>|
    <primal:logs_stripped:2>
    : <minecraft:planks:2>,
    <minecraft:log:3>|
    <primal:logs_stripped:3>
    : <minecraft:planks:3>,
    <minecraft:log2>|
    <primal:logs_stripped:4>
    : <minecraft:planks:4>,
    <minecraft:log2:1>|
    <primal:logs_stripped:5>
    : <minecraft:planks:5>,

    <bewitchment:cypress_wood>
    : <bewitchment:cypress_planks>,
    <bewitchment:elder_wood>
    : <bewitchment:elder_planks>,
    <bewitchment:juniper_wood>
    : <bewitchment:juniper_planks>,
    <bewitchment:dragons_blood_wood>
    : <bewitchment:dragons_blood_planks>,

    <extrautils2:ironwood_log>
    : <extrautils2:ironwood_planks>,
    <extrautils2:ironwood_log:1>
    : <extrautils2:ironwood_planks:1>,

    <rustic:log>
    : <rustic:planks>,
    <rustic:log:1>
    : <rustic:planks:1>,

    <mist:acacia_block>|
    <mist:acacia_block:4>|
    <mist:acacia_block:7>|
    <mist:acacia_block:8>|
    <mist:acacia_block:11>
    : <mist:acacia_step>,
    <mist:aspen_block>|
    <mist:aspen_block:4>|
    <mist:aspen_block:7>|
    <mist:aspen_block:8>|
    <mist:aspen_block:11>
    : <mist:aspen_step>,
    <mist:a_tree_block>|
    <mist:a_tree_block:4>|
    <mist:a_tree_block:7>|
    <mist:a_tree_block:8>|
    <mist:a_tree_block:11>
    : <mist:a_tree_step>,
    <mist:birch_block>|
    <mist:birch_block:4>|
    <mist:birch_block:7>|
    <mist:birch_block:8>|
    <mist:birch_block:11>
    : <mist:birch_step>,
    <mist:oak_block>|
    <mist:oak_block:4>|
    <mist:oak_block:7>|
    <mist:oak_block:8>|
    <mist:oak_block:11>
    : <mist:oak_step>,
    <mist:pine_block>|
    <mist:pine_block:4>|
    <mist:pine_block:7>|
    <mist:pine_block:8>|
    <mist:pine_block:11>
    : <mist:pine_step>,
    <mist:poplar_block>|
    <mist:poplar_block:4>|
    <mist:poplar_block:7>|
    <mist:poplar_block:8>|
    <mist:poplar_block:11>
    : <mist:poplar_step>,
    <mist:snow_block>|
    <mist:snow_block:4>|
    <mist:snow_block:7>|
    <mist:snow_block:8>|
    <mist:snow_block:11>
    : <mist:snow_step>,
    <mist:spruce_block>|
    <mist:spruce_block:4>|
    <mist:spruce_block:7>|
    <mist:spruce_block:8>|
    <mist:spruce_block:11>
    : <mist:spruce_step>,
    <mist:s_tree_block>|
    <mist:s_tree_block:4>|
    <mist:s_tree_block:7>|
    <mist:s_tree_block:8>|
    <mist:s_tree_block:11>
    : <mist:s_tree_step>,
    <mist:t_tree_block>|
    <mist:t_tree_block:4>|
    <mist:t_tree_block:7>|
    <mist:t_tree_block:8>|
    <mist:t_tree_block:11>
    : <mist:t_tree_step>,
    <mist:willow_block>|
    <mist:willow_block:4>|
    <mist:willow_block:7>|
    <mist:willow_block:8>|
    <mist:willow_block:11>
    : <mist:willow_step>,
    <mist:r_tree_block>|
    <mist:r_tree_block:4>|
    <mist:r_tree_block:7>|
    <mist:r_tree_block:8>|
    <mist:r_tree_block:11>
    : <mist:r_tree_step>,

    <sakura:maple_log>|
    <sakura:maple_log_sap>
    : <sakura:plank_maple>,
    <sakura:sakura_log>
    : <sakura:plank_sakura>,

    <thaumcraft:log_greatwood>
    : <thaumcraft:plank_greatwood>,
    <thaumcraft:log_silverwood>
    : <thaumcraft:plank_silverwood>,

    <atum:palm_log>
    : <atum:palm_planks>,
    <atum:deadwood_log>
    : <atum:deadwood_planks>,

    <integrateddynamics:menril_log>|
    <integrateddynamics:menril_log_filled>
    : <integrateddynamics:menril_planks>,

    <primal:logs>
    : <primal:planks>,
    <primal:corypha_stalk>
    : <primal:planks:3>,
    <primal:logs:1>
    : <primal:planks:1>,

    <abyssalcraft:dltlog>|
    <abyssalcraft:dltlog2>
    : <abyssalcraft:dltplank>,
    <abyssalcraft:dreadlog>
    : <abyssalcraft:dreadplanks>,

    <thebetweenlands:weedwood>|
    <thebetweenlands:log_weedwood:12>|
    <thebetweenlands:log_weedwood>
    : <thebetweenlands:weedwood_planks>,
    <thebetweenlands:log_rubber>|
    <gregtech:log>
    : <thebetweenlands:rubber_tree_planks>,
    <thebetweenlands:giant_root>
    : <thebetweenlands:giant_root_planks>,
    <thebetweenlands:log_hearthgrove:1>|
    <thebetweenlands:log_hearthgrove:5>|
    <thebetweenlands:log_hearthgrove:3>|
    <thebetweenlands:log_hearthgrove:7>
    : <thebetweenlands:hearthgrove_planks>,
    <thebetweenlands:log_nibbletwig>|
    <thebetweenlands:log_nibbletwig:12>
    : <thebetweenlands:nibbletwig_planks>,
    <thebetweenlands:log_rotten_bark>
    : <thebetweenlands:rotten_planks>,

    <erebus:log_balsam>
    : <erebus:planks:6>,
    <erebus:log_scorched>
    : <erebus:planks:11>,
    <erebus:log_baobab>
    : <erebus:planks>,
    <erebus:log_eucalyptus>
    : <erebus:planks:1>,
    <erebus:log_mahogany>
    : <erebus:planks:2>,
    <erebus:log_mossbark>
    : <erebus:planks:3>,
    <erebus:log_asper>
    : <erebus:planks:4>,
    <erebus:log_cypress>
    : <erebus:planks:5>,
    <erebus:log_bamboo>
    : <erebus:planks:8>,
    <erebus:log_rotten>
    : <erebus:planks:9>,
    <erebus:log_marshwood>
    : <erebus:planks:10>,


    <aether_legacy:aether_log:0>|
    <aether_legacy:aether_log:1>
    : <aether_legacy:skyroot_plank>,

    <plants2:nether_log>
    : <plants2:planks>,
    <plants2:nether_log:1>
    : <plants2:planks:1>,
    <plants2:log_0>
    : <plants2:planks:2>,
    <plants2:log_0:1>
    : <plants2:planks:3>,
    <plants2:log_0:2>
    : <plants2:planks:4>,
    <plants2:log_0:3>
    : <plants2:planks:5>,
    <plants2:crystal_log>
    : <plants2:crystal_planks>,
    <plants2:crystal_log:1>
    : <plants2:crystal_planks:1>,

    <blue_skies:bluebright_log>
    : <blue_skies:bluebright_planks>,
    <blue_skies:cherry_log>
    : <blue_skies:cherry_planks>,
    <blue_skies:starlit_log>
    : <blue_skies:starlit_planks>,
    <blue_skies:dusk_log>
    : <blue_skies:dusk_planks>,
    <blue_skies:frostbright_log>
    : <blue_skies:frostbright_planks>,
    <blue_skies:lunar_log>
    : <blue_skies:lunar_planks>,
    <blue_skies:maple_log>
    : <blue_skies:maple_planks>,

    <theaurorian:silentwoodlog>
    : <theaurorian:silentwoodplanks>,
    <theaurorian:weepingwillowlog>
    : <theaurorian:weepingwillowplanks>,

    <naturesaura:ancient_bark>|
    <naturesaura:ancient_log>
    :<naturesaura:ancient_planks>,

    <cheesemod:cheese_log>
    :<cheesemod:cheese_planks>,
    <cheesemod:cheese_log:1>
    :<cheesemod:cheese_planks:1>,
    <cheesemod:cheese_log:2>
    :<cheesemod:cheese_planks:2>,
    <cheesemod:cheese_log:3>
    :<cheesemod:cheese_planks:3>,

    <moreplanets:cheese_spore_stem>
    :<moreplanets:cheese_spore_planks>,
    <moreplanets:infected_oak_log>
    :<moreplanets:infected_oak_planks>,
    <moreplanets:infected_deadwood_log>
    :<moreplanets:infected_oak_planks>,
    <moreplanets:infected_spruce_log>
    :<moreplanets:infected_spruce_planks>,
    <moreplanets:infected_jungle_log>
    :<moreplanets:infected_oak_planks>,
    <moreplanets:alien_berry_oak_log>
    :<moreplanets:alien_berry_oak_planks>,
    <moreplanets:oscalea_log>
    :<moreplanets:oscalea_planks>,
    <moreplanets:frolia_log>
    :<moreplanets:frolia_planks>,

    <gaiadimension:aura_log>
    :<gaiadimension:aura_planks>,
    <gaiadimension:blue_agate_log>
    :<gaiadimension:blue_agate_planks>,
    <gaiadimension:burning_log>
    :<gaiadimension:burning_planks>,
    <gaiadimension:burnt_log>
    :<gaiadimension:burnt_planks>,
    <gaiadimension:corrupted_log>
    :<gaiadimension:corrupted_planks>,
    <gaiadimension:fossilized_log>
    :<gaiadimension:fossilized_planks>,
    <gaiadimension:green_agate_log>
    :<gaiadimension:green_agate_planks>,
    <gaiadimension:pink_agate_log>
    :<gaiadimension:pink_agate_planks>,
    <gaiadimension:purple_agate_log>
    :<gaiadimension:purple_agate_planks>,

    <midnight:dark_willow_log>
    :<midnight:dark_willow_planks>,
    <midnight:dead_wood_log>
    :<midnight:dead_wood_planks>,
    <midnight:dewshroom_stem>
    :<midnight:dewshroom_planks>,
    <midnight:nightshroom_stem>
    :<midnight:nightshroom_planks>,
    <midnight:shadowroot_log>
    :<midnight:shadowroot_planks>,
    <midnight:viridshroom_stem>
    :<midnight:viridshroom_planks>

};
for log, plank in woodtoplank {

recipes.remove(plank*2);
recipes.remove(plank*4);

recipes.addShapeless(plank * 1, 
    [log]);
mods.primaltech.WaterSaw.addRecipe(plank * 4, log,8);

cutting_saw.recipeBuilder()
	.inputs([log])
	.fluidInputs([<liquid:water> * 5])
	.outputs([plank * 5])
	.EUt(8)
	.duration(400)
	.buildAndRegister();

RecipeBuilder.get("basic")
	.setShapeless([log])
	.addTool(<ore:toolSaw>, 10)
	.addOutput(plank * 2)
	.create();
}
//chest
recipes.remove(<minecraft:chest>*4);
var planktochest as IItemStack[IIngredient] = {
    <rustic:painted_wood_black>|
    <rustic:painted_wood_blue>|
    <rustic:painted_wood_brown>|
    <rustic:painted_wood_cyan>|
    <rustic:painted_wood_gray>|
    <rustic:painted_wood_green>|
    <rustic:painted_wood_light_blue>|
    <rustic:painted_wood_lime>|
    <rustic:painted_wood_magenta>|
    <rustic:painted_wood_orange>|
    <rustic:painted_wood_pink>|
    <rustic:painted_wood_purple>|
    <rustic:painted_wood_red>|
    <rustic:painted_wood_silver>|
    <rustic:painted_wood_white>|
    <rustic:painted_wood_yellow>|
    <chisel:planks-oak:1>|
    <chisel:planks-oak:2>|
    <chisel:planks-oak:3>|
    <chisel:planks-oak:4>|
    <chisel:planks-oak:5>|
    <chisel:planks-oak:6>|
    <chisel:planks-oak:7>|
    <chisel:planks-oak:8>|
    <chisel:planks-oak:9>|
    <chisel:planks-oak:10>|
    <chisel:planks-oak:11>|
    <chisel:planks-oak:12>|
    <chisel:planks-oak:13>|
    <chisel:planks-oak:14>|
    <minecraft:planks>|
    <extrautils2:ironwood_planks>|
    <extrautils2:ironwood_planks:1>|
    <rustic:planks>|
    <rustic:planks:1>|
    <mist:aspen_step>|
    <mist:a_tree_step>|
    <mist:oak_step>|
    <mist:pine_step>|
    <mist:poplar_step>|
    <mist:snow_step>|
    <mist:s_tree_step>|
    <mist:t_tree_step>|
    <mist:willow_step>|
    <mist:r_tree_step>|
    <sakura:plank_maple>|
    <sakura:plank_sakura>|
    <thaumcraft:plank_greatwood>|
    <thaumcraft:plank_silverwood>|
    <atum:palm_planks>|
    <atum:deadwood_planks>|
    <integrateddynamics:menril_planks>|
    <primal:planks>|
    <primal:planks:3>|
    <primal:planks:1>|
    <abyssalcraft:dltplank>|
    <abyssalcraft:dreadplanks>|
    <erebus:planks:6>|
    <erebus:planks:11>|
    <erebus:planks>|
    <erebus:log_eucalyptus>|
    <erebus:planks:1>|
    <erebus:planks:2>|
    <erebus:planks:3>|
    <erebus:planks:4>|
    <erebus:planks:5>|
    <erebus:planks:8>|
    <erebus:planks:9>|
    <erebus:planks:10>|
    <sakura:plank_bamboo>|
    <aether_legacy:skyroot_plank>|
    <bewitchment:cypress_planks>|
    <bewitchment:elder_planks>|
    <bewitchment:juniper_planks>|
    <bewitchment:dragons_blood_planks>|
    <plants2:planks>|
    <plants2:planks:1>|
    <plants2:planks:2>|
    <plants2:planks:3>|
    <plants2:planks:4>|
    <plants2:planks:5>|
    <plants2:crystal_planks>|
    <plants2:crystal_planks:1>|
    <theaurorian:weepingwillowplanks>|
    <naturesaura:ancient_planks>|
    <cheesemod:cheese_planks>|
    <cheesemod:cheese_planks:1>|
    <cheesemod:cheese_planks:2>|
    <cheesemod:cheese_planks:3>|
    <moreplanets:infected_purlonite_planks>|
    <moreplanets:oscalea_planks>|
    <moreplanets:frolia_planks>|
    <gaiadimension:aura_planks>|
    <gaiadimension:blue_agate_planks>|
    <gaiadimension:burning_planks>|
    <gaiadimension:burnt_planks>|
    <gaiadimension:corrupted_planks>|
    <gaiadimension:fossilized_planks>|
    <gaiadimension:green_agate_planks>|
    <gaiadimension:pink_agate_planks>|
    <gaiadimension:purple_agate_planks>
    : <minecraft:chest>,
    <chisel:planks-spruce>|
    <chisel:planks-spruce:1>|
    <chisel:planks-spruce:2>|
    <chisel:planks-spruce:3>|
    <chisel:planks-spruce:4>|
    <chisel:planks-spruce:5>|
    <chisel:planks-spruce:6>|
    <chisel:planks-spruce:7>|
    <chisel:planks-spruce:8>|
    <chisel:planks-spruce:9>|
    <chisel:planks-spruce:10>|
    <chisel:planks-spruce:11>|
    <chisel:planks-spruce:12>|
    <chisel:planks-spruce:13>|
    <chisel:planks-spruce:14>|
    <mist:spruce_step>|
    <minecraft:planks:1>
    : <quark:custom_chest>,
    <chisel:planks-birch>|
    <chisel:planks-birch:1>|
    <chisel:planks-birch:2>|
    <chisel:planks-birch:3>|
    <chisel:planks-birch:4>|
    <chisel:planks-birch:5>|
    <chisel:planks-birch:6>|
    <chisel:planks-birch:7>|
    <chisel:planks-birch:8>|
    <chisel:planks-birch:9>|
    <chisel:planks-birch:10>|
    <chisel:planks-birch:11>|
    <chisel:planks-birch:12>|
    <chisel:planks-birch:13>|
    <chisel:planks-birch:14>|
    <mist:birch_step>|
    <minecraft:planks:2>
    : <quark:custom_chest:1>,
    <chisel:planks-jungle>|
    <chisel:planks-jungle:1>|
    <chisel:planks-jungle:2>|
    <chisel:planks-jungle:3>|
    <chisel:planks-jungle:4>|
    <chisel:planks-jungle:5>|
    <chisel:planks-jungle:6>|
    <chisel:planks-jungle:7>|
    <chisel:planks-jungle:8>|
    <chisel:planks-jungle:9>|
    <chisel:planks-jungle:10>|
    <chisel:planks-jungle:11>|
    <chisel:planks-jungle:12>|
    <chisel:planks-jungle:13>|
    <chisel:planks-jungle:14>|
    <minecraft:planks:3>
    : <quark:custom_chest:2>,
    <chisel:planks-acacia>|
    <chisel:planks-acacia:1>|
    <chisel:planks-acacia:2>|
    <chisel:planks-acacia:3>|
    <chisel:planks-acacia:4>|
    <chisel:planks-acacia:5>|
    <chisel:planks-acacia:6>|
    <chisel:planks-acacia:7>|
    <chisel:planks-acacia:8>|
    <chisel:planks-acacia:9>|
    <chisel:planks-acacia:10>|
    <chisel:planks-acacia:11>|
    <chisel:planks-acacia:12>|
    <chisel:planks-acacia:13>|
    <chisel:planks-acacia:14>|
    <mist:acacia_step>|
    <minecraft:planks:4>
    : <quark:custom_chest:3>,
    <chisel:planks-dark-oak>|
    <chisel:planks-dark-oak:1>|
    <chisel:planks-dark-oak:2>|
    <chisel:planks-dark-oak:3>|
    <chisel:planks-dark-oak:4>|
    <chisel:planks-dark-oak:5>|
    <chisel:planks-dark-oak:6>|
    <chisel:planks-dark-oak:7>|
    <chisel:planks-dark-oak:8>|
    <chisel:planks-dark-oak:9>|
    <chisel:planks-dark-oak:10>|
    <chisel:planks-dark-oak:11>|
    <chisel:planks-dark-oak:12>|
    <chisel:planks-dark-oak:13>|
    <chisel:planks-dark-oak:14>|
    <minecraft:planks:5>
    : <quark:custom_chest:4>,
    <blue_skies:bluebright_planks>
    : <blue_skies:bluebright_chest>,
    <blue_skies:starlit_planks>
    : <blue_skies:starlit_chest>,
    <blue_skies:cherry_planks>
    : <blue_skies:cherry_chest>,
    <blue_skies:dusk_planks>
    : <blue_skies:dusk_chest>,
    <blue_skies:lunar_planks>
    : <blue_skies:lunar_chest>,
    <blue_skies:maple_planks>
    : <blue_skies:maple_chest>,
    <blue_skies:frostbright_planks>
    :<blue_skies:frostbright_chest>,
    <moreplanets:alien_berry_oak_planks>
    :<moreplanets:alien_berry_chest>,
    <moreplanets:cheese_spore_planks>
    :<moreplanets:cheese_spore_chest>,
    <moreplanets:infected_oak_planks>|
    <moreplanets:infected_spruce_planks>
    :<moreplanets:infected_chest>,
    <thebetweenlands:rotten_planks>|
    <thebetweenlands:weedwood_planks>|
    <thebetweenlands:rubber_tree_planks>|
    <thebetweenlands:giant_root_planks>|
    <thebetweenlands:hearthgrove_planks>|
    <thebetweenlands:nibbletwig_planks>
    :<thebetweenlands:weedwood_chest>,
    <theaurorian:silentwoodplanks>
    :<theaurorian:silentwoodchest>,
    <midnight:shadowroot_planks>|
    <midnight:dead_wood_planks>|
    <midnight:dark_willow_planks>|
    <midnight:nightshroom_planks>|
    <midnight:dewshroom_planks>|
    <midnight:viridshroom_planks>
    :<midnight:shadowroot_chest>
};
for plank, chest in planktochest {

recipes.remove(chest);

recipes.addShaped(chest, [
	[plank, plank, plank],
	[plank, <actuallyadditions:block_misc:4>, plank],
	[plank, plank, plank]]);
 RecipeBuilder.get("basic")
	.setShaped([
      [plank, plank, plank],
      [plank, null, plank],
      [plank, plank, plank]])
    .addTool(<ore:toolAxe>, 10)
    .addOutput(chest)
    .create();
}

//preaureplate
var planktoplate as IItemStack[IIngredient] = {
    <rustic:painted_wood_black>|
    <rustic:painted_wood_blue>|
    <rustic:painted_wood_brown>|
    <rustic:painted_wood_cyan>|
    <rustic:painted_wood_gray>|
    <rustic:painted_wood_green>|
    <rustic:painted_wood_light_blue>|
    <rustic:painted_wood_lime>|
    <rustic:painted_wood_magenta>|
    <rustic:painted_wood_orange>|
    <rustic:painted_wood_pink>|
    <rustic:painted_wood_purple>|
    <rustic:painted_wood_red>|
    <rustic:painted_wood_silver>|
    <rustic:painted_wood_white>|
    <rustic:painted_wood_yellow>|
    <chisel:planks-oak:1>|
    <chisel:planks-oak:2>|
    <chisel:planks-oak:3>|
    <chisel:planks-oak:4>|
    <chisel:planks-oak:5>|
    <chisel:planks-oak:6>|
    <chisel:planks-oak:7>|
    <chisel:planks-oak:8>|
    <chisel:planks-oak:9>|
    <chisel:planks-oak:10>|
    <chisel:planks-oak:11>|
    <chisel:planks-oak:12>|
    <chisel:planks-oak:13>|
    <chisel:planks-oak:14>|
    <minecraft:planks>|
    <extrautils2:ironwood_planks>|
    <extrautils2:ironwood_planks:1>|
    <rustic:planks>|
    <rustic:planks:1>|
    <mist:aspen_step>|
    <mist:a_tree_step>|
    <mist:oak_step>|
    <mist:pine_step>|
    <mist:poplar_step>|
    <mist:snow_step>|
    <mist:s_tree_step>|
    <mist:t_tree_step>|
    <mist:willow_step>|
    <mist:r_tree_step>|
    <sakura:plank_maple>|
    <sakura:plank_sakura>|
    <thaumcraft:plank_greatwood>|
    <thaumcraft:plank_silverwood>|
    <atum:palm_planks>|
    <atum:deadwood_planks>|
    <integrateddynamics:menril_planks>|
    <primal:planks>|
    <primal:planks:3>|
    <primal:planks:1>|
    <abyssalcraft:dreadplanks>|
    <erebus:planks:6>|
    <erebus:planks:11>|
    <erebus:planks>|
    <erebus:log_eucalyptus>|
    <erebus:planks:1>|
    <erebus:planks:2>|
    <erebus:planks:3>|
    <erebus:planks:4>|
    <erebus:planks:5>|
    <erebus:planks:8>|
    <erebus:planks:9>|
    <erebus:planks:10>|
    <sakura:plank_bamboo>|
    <aether_legacy:skyroot_plank>|
    <plants2:planks>|
    <plants2:planks:1>|
    <plants2:planks:2>|
    <plants2:planks:3>|
    <plants2:planks:4>|
    <plants2:planks:5>|
    <plants2:crystal_planks>|
    <plants2:crystal_planks:1>|
    <theaurorian:weepingwillowplanks>|
    <naturesaura:ancient_planks>|
    <cheesemod:cheese_planks>|
    <cheesemod:cheese_planks:1>|
    <cheesemod:cheese_planks:2>|
    <cheesemod:cheese_planks:3>|
    <gaiadimension:aura_planks>|
    <gaiadimension:blue_agate_planks>|
    <gaiadimension:burning_planks>|
    <gaiadimension:burnt_planks>|
    <gaiadimension:corrupted_planks>|
    <gaiadimension:fossilized_planks>|
    <gaiadimension:green_agate_planks>|
    <gaiadimension:pink_agate_planks>|
    <gaiadimension:purple_agate_planks>
    : <minecraft:wooden_pressure_plate>,
    <chisel:planks-spruce>|
    <chisel:planks-spruce:1>|
    <chisel:planks-spruce:2>|
    <chisel:planks-spruce:3>|
    <chisel:planks-spruce:4>|
    <chisel:planks-spruce:5>|
    <chisel:planks-spruce:6>|
    <chisel:planks-spruce:7>|
    <chisel:planks-spruce:8>|
    <chisel:planks-spruce:9>|
    <chisel:planks-spruce:10>|
    <chisel:planks-spruce:11>|
    <chisel:planks-spruce:12>|
    <chisel:planks-spruce:13>|
    <chisel:planks-spruce:14>|
    <mist:spruce_step>|
    <minecraft:planks:1>
    : <quark:spruce_pressure_plate>,
    <chisel:planks-birch>|
    <chisel:planks-birch:1>|
    <chisel:planks-birch:2>|
    <chisel:planks-birch:3>|
    <chisel:planks-birch:4>|
    <chisel:planks-birch:5>|
    <chisel:planks-birch:6>|
    <chisel:planks-birch:7>|
    <chisel:planks-birch:8>|
    <chisel:planks-birch:9>|
    <chisel:planks-birch:10>|
    <chisel:planks-birch:11>|
    <chisel:planks-birch:12>|
    <chisel:planks-birch:13>|
    <chisel:planks-birch:14>|
    <mist:birch_step>|
    <minecraft:planks:2>
    : <quark:birch_pressure_plate>,
    <chisel:planks-jungle>|
    <chisel:planks-jungle:1>|
    <chisel:planks-jungle:2>|
    <chisel:planks-jungle:3>|
    <chisel:planks-jungle:4>|
    <chisel:planks-jungle:5>|
    <chisel:planks-jungle:6>|
    <chisel:planks-jungle:7>|
    <chisel:planks-jungle:8>|
    <chisel:planks-jungle:9>|
    <chisel:planks-jungle:10>|
    <chisel:planks-jungle:11>|
    <chisel:planks-jungle:12>|
    <chisel:planks-jungle:13>|
    <chisel:planks-jungle:14>|
    <minecraft:planks:3>
    : <quark:jungle_pressure_plate>,
    <chisel:planks-acacia>|
    <chisel:planks-acacia:1>|
    <chisel:planks-acacia:2>|
    <chisel:planks-acacia:3>|
    <chisel:planks-acacia:4>|
    <chisel:planks-acacia:5>|
    <chisel:planks-acacia:6>|
    <chisel:planks-acacia:7>|
    <chisel:planks-acacia:8>|
    <chisel:planks-acacia:9>|
    <chisel:planks-acacia:10>|
    <chisel:planks-acacia:11>|
    <chisel:planks-acacia:12>|
    <chisel:planks-acacia:13>|
    <chisel:planks-acacia:14>|
    <mist:acacia_step>|
    <minecraft:planks:4>
    : <quark:acacia_pressure_plate>,
    <chisel:planks-dark-oak>|
    <chisel:planks-dark-oak:1>|
    <chisel:planks-dark-oak:2>|
    <chisel:planks-dark-oak:3>|
    <chisel:planks-dark-oak:4>|
    <chisel:planks-dark-oak:5>|
    <chisel:planks-dark-oak:6>|
    <chisel:planks-dark-oak:7>|
    <chisel:planks-dark-oak:8>|
    <chisel:planks-dark-oak:9>|
    <chisel:planks-dark-oak:10>|
    <chisel:planks-dark-oak:11>|
    <chisel:planks-dark-oak:12>|
    <chisel:planks-dark-oak:13>|
    <chisel:planks-dark-oak:14>|
    <minecraft:planks:5>
    : <quark:dark_oak_pressure_plate>
};
for plank, plate in planktoplate {

recipes.addShaped(plate, [[plank, plank]]);
}
recipes.addShaped(<minecraft:fence>, [[<ore:plankgaia>, <ore:stickWood>, <ore:plankgaia>], [<ore:plankgaia>, <ore:stickWood>, <ore:plankgaia>]]);
//stick
recipes.removeByRecipeName("enderio:tweak_stick_from_wood");
recipes.removeByRecipeName("cheesemod:stick_from_log");
print("---------------craftwood end------------------");

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.primaltech.ClayKiln;
import mods.primaltech.WaterSaw;
import mods.primaltech.WoodenBasin;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

print("---------------Primaltech Start------------------");

//charcoal from low grade
	recipes.removeByRecipeName("primal_tech:recipe_charcoal");

//Bone Tool Buffing
<primal_tech:bone_axe>.maxDamage = 157;
<primal_tech:bone_shovel>.maxDamage = 157;
<primal_tech:bone_shears>.maxDamage = 157;
<primal_tech:bone_sword>.maxDamage = 157;
<primal_tech:bone_pickaxe>.maxDamage = 157;
<primal_tech:stone_mallet>.maxDamage = 140;   

//bone shard 
RecipeBuilder.get("basic")
	.setShapeless(
      [<ore:bone>])
    .addTool(<ore:toolSaw>, 10)
    .addOutput(<primal_tech:bone_shard> * 4)
    .create();

  RecipeBuilder.get("basic")
	.setShapeless(
      [<erebus:death_compass>])
    .addTool(<ore:toolSaw>, 10)
    .addOutput(<primal_tech:bone_shard> * 4)
    .create();
  
 //charcoal
 RecipeBuilder.get("basic")
	.setShapeless(
      [<primal_tech:charcoal_block>])
    .addTool(<ore:toolSaw>, 10)
    .addOutput(<actuallyadditions:item_misc:11> * 2)
    .create();
 
 #Disabled
var primalTechDisabled as IItemStack[] = [
	<primal_tech:work_stump>,
	<primal_tech:work_stump_upgraded>,
	<primal_tech:rock>,
	<primal_tech:charcoal_hopper>,
	<primal_tech:stone_grill>
	];
for i in primalTechDisabled {
	mods.jei.JEI.removeAndHide(i);
}

//twine
	recipes.remove(<primal:plant_cordage>);
 RecipeBuilder.get("basic")
	.setShapeless(
      [<primal:plant_fiber>,<primal:plant_fiber>,<primal:plant_fiber>])
    .addTool(<ore:toolShear>, 2)
    .addOutput(<primal:plant_cordage>*2)
    .create();
	
  //PlantFibre
recipes .remove(<primal_tech:plant_fibres>);
recipes .remove(<primal:plant_fiber>);
 RecipeBuilder .get("basic")
	.setShapeless(
    [<ore:plant>])
    .addTool(<ore:toolShear>, 1)
    .addOutput(<primal:plant_fiber>)
    .create();

  //clay bucket
ClayKiln .addRecipe(<ceramics:clay_bucket>, <ceramics:unfired_clay>,200);

//ClayKiln
furnace.remove(<minecraft:bread>, <atum:emmer_flour>);
furnace.remove(<minecraft:bread>, <enderio:item_material:21>);
furnace.remove(<minecraft:bread>, <sakura:materials:4>);
furnace.remove(<minecraft:bread>, <gregtech:meta_item_1:2345>);
furnace.remove(<minecraft:bread>, <appliedenergistics2:material:4>);
furnace.remove(<minecraft:bread>, <primal:wheat_ground:*>);
furnace.remove(<minecraft:bread>, <contenttweaker:whole_flour>);
furnace.remove(<minecraft:bread>, <harvestcraft:flouritem>);
recipes.remove(<minecraft:bread>);
ClayKiln .addRecipe(<primal_tech:charcoal_block>,<ore:logWood>,200);
ClayKiln .addRecipe(<minecraft:stone>,<minecraft:cobblestone>,200);
ClayKiln .addRecipe(<sakura:materials:31>,<sakura:materials:15>,200);
ClayKiln .addRecipe(<sakura:foodset:73>,<sakura:materials:31>,200);
ClayKiln .addRecipe(<minecraft:brick>,<ore:itemClay>,200);
ClayKiln .addRecipe(<quark:glass_shards>,<minecraft:sand>,200);
ClayKiln .addRecipe(<ceramics:unfired_clay:5>,<ceramics:unfired_clay:4>,200);
ClayKiln .addRecipe(<quark:glass_shards>,<minecraft:sand:1>,200);
ClayKiln .addRecipe(<quark:glass_shards>,<ore:sand>,200);
    var rawtocooked as IItemStack[IIngredient] = {
   
    <harvestcraft:clamrawitem>
	:<harvestcraft:clamcookeditem>,
    <harvestcraft:crayfishrawitem>
    :<harvestcraft:crayfishcookeditem>,
    <harvestcraft:crabrawitem>
    :<harvestcraft:crabcookeditem>,
    <harvestcraft:frograwitem>
    :<harvestcraft:frogcookeditem>,
    <harvestcraft:scalloprawitem>
    :<harvestcraft:scallopcookeditem>,
    <harvestcraft:snailrawitem>
    :<harvestcraft:snailcookeditem>,
    <harvestcraft:turtlerawitem>
    :<harvestcraft:turtlecookeditem>,
    <harvestcraft:shrimprawitem>|
    <sakura:foodset:78>
    :<harvestcraft:shrimpcookeditem>,
    <harvestcraft:calamarirawitem>
    :<harvestcraft:calamaricookeditem>,
    <harvestcraft:octopusrawitem>
    :<harvestcraft:octopuscookeditem>,
    <harvestcraft:oysterrawitem>
    :<harvestcraft:oystercookeditem>,
    <harvestcraft:musselrawitem>
    :<harvestcraft:musselcookeditem>,
    <harvestcraft:grubitem>
    :<harvestcraft:cookedgrubitem>,
    <harvestcraft:turkeyrawitem>
    :<harvestcraft:turkeycookeditem>,
    <harvestcraft:duckrawitem>
    :<harvestcraft:duckcookeditem>,
    <harvestcraft:venisonrawitem>
    :<harvestcraft:venisoncookeditem>,
    <harvestcraft:rawtofuduckitem>
    :<harvestcraft:cookedtofuduckitem>,
    <harvestcraft:rawtofenisonitem>
    :<harvestcraft:cookedtofenisonitem>,
    <harvestcraft:rawtofurkeyitem>
    :<harvestcraft:cookedtofurkeyitem>,
    <harvestcraft:rawtofabbititem>
    :<harvestcraft:cookedtofabbititem>,
    <harvestcraft:rawtofickenitem>
    :<harvestcraft:cookedtofickenitem>,
    <harvestcraft:rawtofuttonitem>
    :<harvestcraft:cookedtofuttonitem>,
    <harvestcraft:rawtofeegitem>
    :<harvestcraft:cookedtofeegitem>,
    <harvestcraft:rawtofishitem>
    :<harvestcraft:cookedtofishitem>,
    <harvestcraft:rawtofaconitem>
    :<harvestcraft:cookedtofaconitem>,
    <harvestcraft:rawtofeakitem>
    :<harvestcraft:cookedtofeakitem>,
    <minecraft:egg>|
    <enderio:item_owl_egg>
    :<harvestcraft:friedeggitem>,

    <harvestcraft:catfishrawitem>|
    <harvestcraft:perchrawitem>|
    <harvestcraft:greenheartfishitem>|
    <harvestcraft:walleyerawitem>|
    <harvestcraft:snapperrawitem>|
    <harvestcraft:anchovyrawitem>|
    <harvestcraft:troutrawitem>|
    <harvestcraft:charrrawitem>|
    <harvestcraft:carprawitem>|
    <harvestcraft:tunarawitem>|
    <harvestcraft:bassrawitem>|
    <harvestcraft:tilapiarawitem>|
    <harvestcraft:eelrawitem>|
    <harvestcraft:mudfishrawitem>|
    <harvestcraft:grouperrawitem>|
    <harvestcraft:herringrawitem>|
    <harvestcraft:sardinerawitem>|
    <minecraft:fish>|
    <sakura:foodset:141>|
    <mist:swim_bladder>|
	<moreplanets:zelius_fish>|
	<moreplanets:glowing_alien_fish>|
	<moreplanets:cheese_fish>|
	<midnight:deceitful_snapper>
    :<minecraft:cooked_fish>,
    <minecraft:salmon>
    :<minecraft:cooked_salmon>,
    <minecraft:porkchop>
    :<minecraft:cooked_porkchop>,
    <minecraft:mutton>
    :<minecraft:cooked_mutton>,
    <minecraft:rabbit>
    :<minecraft:cooked_rabbit>,
    <minecraft:beef>
    :<minecraft:cooked_beef>,
    <minecraft:chicken>
    :<minecraft:cooked_chicken>,
    
    <primal:shark_meat_raw>
    :<primal:shark_meat_cooked>,
    <primal:gator_meat_raw>
    :<primal:gator_meat_cooked>,
    <primal:horse_meat_raw>
    :<primal:horse_meat_cooked>,
    <primal:wolf_meat_raw>
    :<primal:wolf_meat_cooked>,
    <primal:ovis_meat_raw>
    :<primal:ovis_meat_cooked>,
    <primal:pigman_meat_raw>
    :<primal:pigman_meat_cooked>,
    <primal:bear_meat_raw>
    :<primal:bear_meat_cooked>,
    <primal:llama_meat_raw>
    :<primal:llama_meat_cooked>,
    <primal:bat_meat_raw>
    :<primal:bat_meat_cooked>,
    <minecraft:fish:3>
    :<primal:fish_puffer_cooked>,
    <minecraft:fish:2>
    :<primal:fish_clown_cooked>,

    <mist:meat_food>
    :<mist:meat_cook>,
    <mist:meat_food:1>
    :<mist:meat_cook:1>,
    <mist:meat_food:2>
    :<mist:meat_cook:2>,
    <mist:meat_food:3>
    :<mist:meat_cook:3>,
    <mist:meat_food:4>
    :<mist:meat_cook:4>,
    <mist:meat_food:5>
    :<mist:meat_cook:5>,
    <mist:meat_food:6>
    :<mist:meat_cook:6>,
    <mist:meat_food:7>
    :<mist:meat_cook:7>,
    <mist:meat_food:8>
    :<mist:meat_cook:8>,
    <mist:meat_food:9>
    :<mist:meat_cook:9>,
    <mist:meat_food:10>
    :<mist:meat_cook:10>,
    <mist:meat_food:11>
    :<mist:meat_cook:11>,
    <mist:meat_food:12>
    :<mist:meat_cook:12>,
    <mist:meat_food:13>
    :<mist:meat_cook:13>,

    <blue_skies:raw_venison>
    :<blue_skies:venison_steak>,
    <blue_skies:raw_azulfo_beef>
    :<blue_skies:azulfo_steak>,

    <theaurorian:aurorianpork>
    :<theaurorian:aurorianporkcooked>,

    <contenttweaker:raw_moameat>
    :<contenttweaker:cooked_moameat>,

    <everythingbad:jesus_meat_raw>
    :<everythingbad:jesus_meat_cooked>,

    <gaiadimension:lurmorus_meat>
    :<gaiadimension:lurmorus_steak>,
    <gaiadimension:luggeroth_chop>
    :<gaiadimension:cooked_luggeroth_chop>,

    <moreplanets:raw_shlime_meat>
    :<moreplanets:cooked_shlime_meat>,
    <moreplanets:raw_cheese_beef>
    :<moreplanets:cooked_cheese_beef>,

    <thebetweenlands:angler_meat_raw>
    :<thebetweenlands:angler_meat_cooked>,
    <thebetweenlands:frog_legs_raw>
    :<thebetweenlands:frog_legs_cooked>,
    <thebetweenlands:snail_flesh_raw>
    :<thebetweenlands:snail_flesh_cooked>,
    <thebetweenlands:mire_snail_egg>
    :<thebetweenlands:mire_snail_egg_cooked>,

    <erebus:erebus_food:12>
    :<erebus:erebus_food:13>,

    <atum:camel_raw>
    :<atum:camel_cooked>,

    <midnight:raw_stag_flank>
    :<midnight:cook_stag_flank>,
    <midnight:stinger_egg>
    :<midnight:cook_stinger_egg>,

    <emergingtechnology:syntheticcowraw>
    :<emergingtechnology:syntheticcowcooked>,
    <emergingtechnology:syntheticchickenraw>
    :<emergingtechnology:syntheticchickencooked>,
    <emergingtechnology:syntheticpigraw>
    :<emergingtechnology:syntheticpigcooked>,
    
    <everythingbad:jesus_meat_raw>
    :<everythingbad:jesus_meat_cooked>,
    <tconstruct:soil>
    :<tconstruct:materials>,
    <ore:treeSapling>
    :<bewitchment:wood_ash>,

    <harvestcraft:doughitem>|
    <sakura:materials:6>|
    <cheesemod:dough>|
    <actuallyadditions:item_misc:4>
    :<minecraft:bread>,
    <sakura:materials:7>
    :<sakura:foodset:131>,
    <actuallyadditions:item_misc:9>  
    :<actuallyadditions:item_food:17>,
    <sakura:materials:17>
    :<sakura:foodset:2>,
    <primal:corn_ground>
    :<primal:corn_bread>,
    <atum:emmer_dough>
    :<atum:emmer_bread>,
    <primal:valus_melon>
    :<primal:valus_bread>


	};
for raw, cooked in rawtocooked {

ClayKiln .addRecipe(cooked,raw,200);

}

	
	
	
	recipes.removeByRecipeName("primal:flint");
	#Water Basin
	#mods.primaltech.WoodenBasin.addRecipe(IItemStack output, <minecraft:water>, IIngredient[] ingredients);

	#mods.primaltech.StoneAnvil.addRecipe(IItemStack output, IIngredient input);

	#mods.primaltech.ClayKiln.addRecipe(IItemStack output, IIngredient input, int cookTime);

	//stick bundle
	recipes .remove(<primal_tech:stick_bundle>);
	recipes .addShaped(<primal_tech:stick_bundle>, 
	[[<ore:stickWood>, <ore:string>, <ore:stickWood>],
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
	[<ore:stickWood>, <ore:string>, <ore:stickWood>]]);
	
	//Stone Mallet
recipes .remove(<primal_tech:stone_mallet>);
recipes .addShapedMirrored(<primal_tech:stone_mallet>, [
	[<ore:stickWood>, <ore:cobblestone>,null],
	[<ore:cobblestone>, <ore:stickWood>,null],
	[null, null,<ore:stickWood>]]);


	#Whitling Sticks (readding this with NBT tags to prevent crashes)
recipes .remove(<primal_tech:fire_sticks>);
recipes .addShapeless(<primal_tech:fire_sticks>.withTag({"rubbingCount":0, "animate":false}),
    [<ore:stickWood>, <ore:stickWood>]);
//water powered saw
	recipes .remove(<primal_tech:water_saw>);
	recipes .addShaped(<primal_tech:water_saw>, 
	[[<ore:pressurePlateWood>, <primal_tech:flint_edged_disc>, <ore:pressurePlateWood>],
	[<ore:stickWood>, <ore:logWood>, <ore:stickWood>], 
	[<ore:pressurePlateWood>, <ore:logWood>, <ore:pressurePlateWood>]]);

print("----------------Primal End-------------------");
//pressure pla
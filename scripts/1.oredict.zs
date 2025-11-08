#priority 998
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


print("-------------- Ore Dictionary Start --------------");

///////////////////////////////////////////////
//		foods		///////////////////////////
///////////////////////

	//valoredict
val candycane = <ore:foodCandycane>;
val chickencooked = <ore:listAllchickencooked>;
val chickenraw = <ore:listAllchickenraw>;
val chocolatebar = <ore:foodChocolatebar>;
val cookie = <ore:listAllcookie>;
val crabcooked = <ore:foodCrabcooked>;
val crabraw = <ore:foodCrabraw>;
val crabsticks = <ore:foodImitationcrabsticks>;
val beefcooked = <ore:listAllbeefcooked>;
val beefraw = <ore:listAllbeefraw>;
val boiledegg = <ore:foodBoiledegg>;
val donut = <ore:foodDonut>;
val dustWheat = <ore:dustWheat>;
val egg = <ore:listAllegg>;
val eggMC = <ore:egg>;
val fishcooked = <ore:listAllfishcooked>;
val fishraw = <ore:listAllfishraw>;
val foodBread = <ore:foodBread>;
val foodFlour = <ore:foodFlour>;
val foodSalt = <ore:foodSalt>;
val foodVenisoncooked = <ore:foodVenisoncooked>;
val itemSalt = <ore:itemSalt>;
val marshmellows = <ore:foodMarshmellows>;
val milk = <ore:listAllmilk>;
val meatcooked = <ore:listAllmeatcooked>;
val meatraw = <ore:listAllmeatraw>;
val salt = <ore:dustSalt>;
val venisonraw = <ore:listAllvenisonraw>;
val venisoncooked = <ore:listAllvenisoncooked>;


	//add#
	//alcohol
<ore:listAllalcohol>.add(
	<sakura:alcoholic>,
	<sakura:alcoholic:1>,
	<sakura:alcoholic:2>,
	<sakura:alcoholic:3>,
	<sakura:alcoholic:4>,
	<sakura:alcoholic:5>,
	<sakura:alcoholic:6>,
	<sakura:alcoholic:7>,
	<sakura:alcoholic:8>,
	<sakura:alcoholic:9>,
	<sakura:alcoholic:10>,
	<sakura:alcoholic:11>,
	<sakura:alcoholic:12>,
	<sakura:alcoholic:13>,
	<sakura:alcoholic:14>,
	<sakura:cocktail:*>,
	
	
	<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "ironwine", Amount: 1000, Tag: {Quality: 0.75 as float}}}),
	<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "wildberrywine", Amount: 1000, Tag: {Quality: 0.75 as float}}}),
	<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "wine", Amount: 1000, Tag: {Quality: 0.75 as float}}})

);
	//BREAD
<ore:foodBread>. add(<theaurorian:lavenderbread>);

	//EGGS
boiledegg. add(
	<thebetweenlands:mire_snail_egg_cooked>,
	<midnight:cook_stinger_egg>
	);
egg. add(
	<aether_legacy:moa_egg>.withTag({typeId: 0}),
	<aether_legacy:moa_egg>.withTag({typeId: 1}),
	<aether_legacy:moa_egg>.withTag({typeId: 2}),
	<aether_legacy:moa_egg>.withTag({typeId: 3}),
	<aether_legacy:moa_egg>.withTag({typeId: 4}),
	<thebetweenlands:mire_snail_egg>,
	<midnight:stinger_egg>
);
	//FLOUR
foodFlour.add(<contenttweaker:whole_flour>);
	//MEATS

	#chiken
chickencooked. add(
<contenttweaker:cooked_moameat>
);
chickenraw. add(
<contenttweaker:raw_moameat>
);

	

	#beef
beefraw. add(
	<blue_skies:raw_azulfo_beef>,
	<moreplanets:raw_cheese_beef>
);
beefcooked. add(
	<blue_skies:azulfo_steak>,
	<moreplanets:cooked_cheese_beef>
);
	#frog
<ore:foodFrograw>.add(<thebetweenlands:frog_legs_raw>);
<ore:foodFrogcooked>.add(<thebetweenlands:frog_legs_cooked>);

	#pork
<ore:listAllporkraw>.add(<theaurorian:aurorianpork>);
<ore:listAllporkcooked>.add(<theaurorian:aurorianporkcooked>);

	#ground
<ore:meatGround>. add(
	<contenttweaker:mysteriousmeat>,
	<harvestcraft:groundbeefitem>,
	<harvestcraft:groundchickenitem>,
	<harvestcraft:groundduckitem>,
	<harvestcraft:groundfishitem>,
	<harvestcraft:groundmuttonitem>,
	<harvestcraft:groundporkitem>,
	<harvestcraft:groundrabbititem>,
	<harvestcraft:groundturkeyitem>,
	<harvestcraft:groundvenisonitem>
);

	#meat
meatcooked. add(
	<atum:camel_cooked>,
	<contenttweaker:cooked_whalemeat>,
	<erebus:erebus_food:13>,
	<everythingbad:jesus_meat_cooked>,
	<mist:meat_cook>,
	<mist:meat_cook:1>,
	<mist:meat_cook:2>,
	<mist:meat_cook:3>,
	<mist:meat_cook:4>,
	<mist:meat_cook:5>,
	<mist:meat_cook:6>,
	<mist:meat_cook:7>,
	<mist:meat_cook:8>,
	<mist:meat_cook:9>,
	<mist:meat_cook:10>,
	<mist:meat_cook:11>,
	<mist:meat_cook:12>,
	<mist:meat_cook:13>,
	<thebetweenlands:frog_legs_cooked>,
	<thebetweenlands:snail_flesh_cooked>,
	<moreplanets:cooked_shlime_meat>,
	<gaiadimension:lurmorus_steak>,
	<gaiadimension:cooked_luggeroth_chop>
);

meatraw. add(
	<atum:camel_raw>,
	<contenttweaker:raw_whalemeat>,
	<erebus:erebus_food:12>,
	<everythingbad:jesus_meat_raw>,
	<mist:meat_food>,
	<mist:meat_food:1>,
	<mist:meat_food:2>,
	<mist:meat_food:3>,
	<mist:meat_food:4>,
	<mist:meat_food:5>,
	<mist:meat_food:6>,
	<mist:meat_food:7>,
	<mist:meat_food:8>,
	<mist:meat_food:9>,
	<mist:meat_food:10>,
	<mist:meat_food:11>,
	<mist:meat_food:12>,
	<mist:meat_food:13>,
	<thebetweenlands:frog_legs_raw>,
	<thebetweenlands:snail_flesh_raw>,
	<contenttweaker:mysteriousmeat>,
	<moreplanets:raw_shlime_meat>,
	<gaiadimension:lurmorus_meat>,
	<gaiadimension:luggeroth_chop>
);
	#rabbit
<ore:listAllrabbitraw>.add(<contenttweaker:raw_aerbunny_meat>);
<ore:listAllrabbitcooked>.add(<contenttweaker:cooked_aerbunny_meat>);
	#snale
<ore:foodSnailraw>.add(<thebetweenlands:snail_flesh_raw>);
<ore:foodSnailcooked>.add(<thebetweenlands:snail_flesh_cooked>);

	#venison
venisonraw. add(
	<blue_skies:raw_venison>,
	<midnight:raw_stag_flank>
);
venisoncooked. add(
	<blue_skies:venison_steak>,
	<midnight:cook_stag_flank>
	);

	//MILK
milk. add(<aether_legacy:skyroot_bucket:4>);
	//remove
milk. remove(<aether_legacy:skyroot_bucket:0>);


	//SALT
foodSalt. add(<mekanism:salt>);
salt. add(<bewitchment:salt>);

	//SEAFOODS
	#crab
crabraw. add(<thebetweenlands:silt_crab_claw>);
crabsticks. add(<thebetweenlands:crab_stick>);
	#fish
fishcooked. add(<thebetweenlands:anadia_meat_cooked>);
fishraw. add(
	<thebetweenlands:anadia_meat_raw>,
	<mist:swim_bladder>,
	<moreplanets:zelius_fish>,
	<moreplanets:glowing_alien_fish>,
	<moreplanets:cheese_fish>,
	<midnight:deceitful_snapper>
);
	//TREATS
	#candy
candycane. add(
	<thebetweenlands:candy_cane>,
	<aether_legacy:candy_cane>,
	<moreplanets:red_candy_cane_stick>,
	<moreplanets:green_candy_cane_stick>,
	<moreplanets:blue_candy_cane_stick>,
	<moreplanets:orange_candy_cane_stick>,
	<moreplanets:pink_candy_cane_stick>,
	<moreplanets:yellow_candy_cane_stick>,
	<moreplanets:purple_candy_cane_stick>,
	<moreplanets:rainbow_candy_cane_stick>
);
	#chocolate
chocolatebar. add(
	<moreplanets:chocolate_bar>,
	<actuallyadditions:item_food:9>
);
	#cookie
cookie. add(
	<aether_legacy:ginger_bread_man>,
	<sakura:foodset:158>,
	<sakura:foodset:1>	
);	
	#donut
donut. add(<thebetweenlands:reed_donut>);
<ore:addedDonut>.add(
	<thebetweenlands:jam_donut>,
	<thebetweenlands:gerts_donut>
);
	#marshmellows
marshmellows. add(
	<thebetweenlands:marshmallow>,
	<thebetweenlands:marshmallow_pink>
	);
/////////////////////////////////////////////////
//////  plants   ///////////////////////////////
///////////////////////////////

	//valoredicts
val almond = <ore:cropAlmond>;
val apple = <ore:cropApple>;
val apricot = <ore:cropApricot>;
val bamboo = <ore:bamboo>;
val bambooshoot = <ore:cropBambooshoot>;
val berry = <ore:listAllberry>;
val blackberry = <ore:cropBlackberry>;
val blueberry = <ore:cropBlueberry>;
val cabbage = <ore:cropCabbage>;
val cherry = <ore:cropCherry>;
val corn = <ore:cropCorn>;
val cotton = <ore:cropCotton>;
val elderberry = <ore:cropElderberry>;
val emmer = <ore:cropEmmer>;
val fig = <ore:cropFig>;
val fruit = <ore:listAllfruit>;
val garlic = <ore:cropGarlic>;
val grain = <ore:listAllgrain>;
val juniperberry = <ore:cropJuniperberry>;
val leek = <ore:cropLeek>;
val mushroom = <ore:foodMushroom>;
val okra = <ore:cropOkra>;
val peach = <ore:cropPeach>;
val peanut = <ore:cropPeanut>;
val pear = <ore:cropPear>;
val pineapple = <ore:cropPineapple>;
val plum = <ore:cropPlum>;
val pumpkin = <ore:cropPumpkin>;
val rutabaga = <ore:cropRutabaga>;
val raspberry = <ore:cropRaspberry>;
val scallion = <ore:cropScallion>;
val seaweed = <ore:cropSeaweed>;
val soybean = <ore:cropSoybean>;
val strawberry = <ore:cropStrawberry>;
val sugarcane = <ore:sugarcane>;
val tomato = <ore:cropTomato>;
val turnip = <ore:cropTurnip>;
val veggie = <ore:listAllveggie>;
val wheat = <ore:cropWheat>;

	//add
	//BAMBOO
bambooshoot. add(<erebus:sapling_bamboo>);

	//BERRY
	#berry
berry. add(
	<blue_skies:black_raspberry>, 
	<bewitchment:elderberries>,    
	<bewitchment:juniper_berries>,
	<plants2:blackberry>,
	<plants2:rubus_o>,
	<plants2:rubus_p>,
	<plants2:actaea_p>,
	<plants2:alyxia_b>,
	<plants2:fire_fruit>,
	<plants2:generic:12>,
	<plants2:huckleberry>,
	<plants2:phytolacca_a>,
	<plants2:solanum_n>,
	<plants2:solanum_d>,
	<theaurorian:silkberry>,
	<moreplanets:alien_berry>,
	<moreplanets:golden_alien_berry>,
	<moreplanets:terraberry>,
	<moreplanets:cheese_spore_berry>,
	<aether_legacy:enchanted_blueberry>
);

	#blackberry
blackberry. add(
	<blue_skies:black_raspberry>,
	<plants2:rubus_o>,
	<plants2:blackberry>
);

	#blueberry
blueberry. add(
	<erebus:erebus_food:14>,
	<moreplanets:giant_blueberry>,
	<moreplanets:alien_berry>,
	<moreplanets:terraberry>
);

	#elderberry
elderberry. add(<bewitchment:elderberries>);
	#juniperberry
juniperberry. add(<bewitchment:juniper_berries>);
	#raspberry
raspberry. add(
	<blue_skies:pink_raspberry>,
	<blue_skies:raspberry>,
	<plants2:raspberry>,
	<plants2:rubus_p>
);

	#strawberry
strawberry. add(<erebus:heart_berries>,<moreplanets:strawberry>);
	//cactus
<ore:cropCactus>.add(<moreplanets:infected_cactus>);
	//COTTON
cotton. add(<mist:desert_cotton_seed:1>);

	//FRUITS
	#apple
apple. add(
	<moreplanets:infected_apple>,
	<aether_legacy:white_apple>
	);
	#cherry
cherry. add(<blue_skies:cherry>);
	#fig
fig. add(
	<thebetweenlands:forbidden_fig>,
	<erebus:erebus_food:11>
);

	#flax
<ore:cropFlax>.remove(<minecraft:string>);
	#fruits
fruit. add(
	<minecraft:melon>,
	<plants2:pineapple>,
	<thebetweenlands:spirit_fruit>,
	<moreplanets:infected_melon_slice>,
	<moreplanets:infected_golden_apple>,
	<moreplanets:enchanted_infected_golden_apple>
);
//


	#peach
peach. add(<blue_skies:nectarine>);
	#pear
pear. add(<thebetweenlands:middle_fruit>,<moreplanets:blue_pear>);
	#pineapple
pineapple. add(<plants2:pineapple>);
pineapple. addAll(<ore:pineapple>);
<ore:pineapple>. addAll(pineapple);
	#plum
plum. add(<sakura:foodset:166>);

	//SUGAR
sugarcane. add(<extraplanets:white_sugar_cane_item>,<galaxyspace:br_basic>);

	//VEGGIE
	#bean
peanut. add(<blue_skies:peanut>);
<ore:CropBean>. add(<blue_skies:green_bean_seeds>);

	#cabbage
cabbage. add(
	<blue_skies:cabbage>,
	<erebus:erebus_food:15>
);

	#corn
corn. add(
	<blue_skies:corn>
);
	#garlic
garlic. add(<bewitchment:garlic>);
	#grain
<ore:grainRaw>. add(
	<harvestcraft:barleyitem>,
	<harvestcraft:oatsitem>,
	<harvestcraft:ryeitem>,
	<harvestcraft:amaranthitem>,
	<harvestcraft:milletitem>,
	<harvestcraft:quinoaitem>
);
	#mushroom
mushroom. add(
	<mist:mushrooms_food>,
	<mist:mushrooms_food:1>,
	<mist:mushrooms_food:2>,
	<mist:mushrooms_food:3>,
	<mist:mushrooms_food:4>,
	<mist:mushrooms_food:5>,
	<mist:mushrooms_food:6>,
	<mist:mushrooms_food:7>,
	<mist:mushrooms_food:8>,
	<mist:mushrooms_food:9>,
	<mist:mushrooms_food:10>,
	<mist:mushrooms_food:12>,
	<mist:mushrooms_food:16>,
	<mist:mushrooms_food:17>,
	<mist:mushrooms_food:18>,
	<mist:mushrooms_food:19>,
	<mist:mushrooms_food:20>,
	<mist:mushrooms_food:21>,
	<mist:mushrooms_food:22>,
	<mist:mushrooms_food:23>,
	<mist:mushrooms_food:24>,
	<mist:mushrooms_food:25>,
	<mist:mushrooms_food:26>,
	<mist:mushrooms_food:27>,
	<theaurorian:mushroomsmall>,
	<thebetweenlands:puffshroom_tendril>,
	<moreplanets:terrashroom>,
	<moreplanets:fronos_mushroom>,
	<thebetweenlands:yellow_dotted_fungus>
);

<ore:listAllmushroom>.addAll(mushroom);
mushroom. addAll(<ore:listAllmushroom>);

	#okra
okra. add(<plants2:okra>);

	#pumpkin

	#seaweed
seaweed. add(<thebetweenlands:swamp_kelp_item>);
seaweed. add(<thebetweenlands:fried_swamp_kelp>);
	#tomato
tomato. add(
	<blue_skies:tomato>
);
	#turnip
turnip. add(<erebus:turnip>);
	#veggie
veggie. add(<everythingbad:devils_cabbage>);
veggie. add(<plants2:daucus_c>);
veggie. add(<blue_skies:cryo_root>);
veggie. add(<blue_skies:green_bean>);


/////////////////////////////////////////
/////		metals   ////////////////////
/////////////////////////////
	//valoredict
	#metal
val aluminium = <ore:ingotAluminium>;
val cobalt = <ore:ingotCobalt>;
val copper = <ore:ingotCopper>;
val iron = <ore:ingotIron>;
val lead = <ore:ingotLead>;
val silver = <ore:ingotSilver>;
val tin = <ore:ingotTin>;

	#metalores
val oreAluminium  = <ore:oreAluminium>;
val oreCobalt = <ore:oreCobalt>;
val oreCopper = <ore:oreCopper>;
val oreIron = <ore:oreIron>;
val oreLead = <ore:oreLead>;
val oreSilver = <ore:oreSilver>;
val oreTin = <ore:oreTin>;

	#add
	//ALMINIUM
oreAluminium. add(<erebus:ore_aluminium>);

	//COBALT

	//COPPER
oreCopper. add(<erebus:ore_copper>);

	//IRON
oreIron. add(
	<sakura:iron_sand>,
	<gaiadimension:hematite_ore>
);

	//LEAD
oreLead. add(<erebus:ore_lead>);
	//MERCURY
<ore:itemCinnabar>.add(<thaumcraft:quicksilver>,<extraplanets:ingot_mercury>);
<ore:nuggetCinnabar>.add(<thaumcraft:nugget:5>);
	//SILVER
oreSilver. add(
	<bewitchment:silver_ore>,
	<erebus:ore_silver>
);
silver. add(<bewitchment:silver_ingot>);

	//TIN
oreTin. add(
	<erebus:ore_tin>
);
	//falsite
<ore:ingotFalsite>. add(<blue_skies:falsite_ingot>);

////////////////////////////////////////////////////////
//RESOASES////////////////////////////////////////////
/////////////////////////////////////

	#resoase
val amber = <ore:gemAmber>;
val amethyst = <ore:gemAmethyst>;
val coal = <ore:coal>;
val emerald = <ore:gemEmerald>;
val garnetRed = <ore:gemGarnetRed>;
val opal = <ore:gemOpal>;
val olivine = <ore:gemOlivine>;
val ruby = <ore:gemRuby>;
val sulfur = <ore:dustSulfur>;
val tanzanite = <ore:gemTanzanite>;

	#resoaseores
val oreAmethyst = <ore:oreAmethyst>;
val oreCoal = <ore:oreCoal>;
val oreEmerald = <ore:oreEmerald>;
val oreGarnetRed = <ore:oreGarnetRed>;
val oreOpal = <ore:oreOpal>;
val orePyrope = <ore:orePyrope>;
val oreRuby = <ore:oreRuby>;
val oreSalt = <ore:oreSalt>;
val oreSulfur = <ore:oreSulfur>;
val oreTanzanite = <ore:oreTanzanite>;

	//add
	//AMBER
amber. add(<aether_legacy:golden_amber>);
	//AMETHYST
oreAmethyst. add(<bewitchment:amethyst_ore>);
amethyst. add(<bewitchment:amethyst>);
	//CINNABAR
<ore:blockCinnabar>.add(<gaiadimension:cinnabar_block>);
<ore:crystalCinnabar>.add(<gaiadimension:cinnabar>);
<ore:dustCinnabar>. add(<gaiadimension:cinnabar_powder>);
<ore:oreCinnabar>. add(<gaiadimension:cinnabar_ore>);
	//COAL

coal. add(
	<mist:filter_coal>,
	<theaurorian:auroriancoal>,
	<moreplanets:infected_coal>,
	<geolosys:coal>,
	<geolosys:coal:1>,
	<geolosys:coal:2>,
	<geolosys:coal:3>
	);
oreCoal. add(<theaurorian:auroriancoalore>);
	//EMERALD
oreEmerald. add(
	<blue_skies:everdawn_emerald_ore>,
	<blue_skies:everbright_emerald_ore>
);


	//GARNETRED
oreGarnetRed. add(<bewitchment:garnet_ore>);
garnetRed. add(<bewitchment:garnet>);

	//OPAL
oreOpal. add(
	<bewitchment:opal_ore>,
	<gaiadimension:opal_ore_red>,
	<gaiadimension:opal_ore_green>,
	<gaiadimension:opal_ore_blue>,
	<gaiadimension:opal_ore_white>
);
opal. add(
	<bewitchment:opal>,
	<gaiadimension:green_opal>,
	<gaiadimension:red_opal>,
	<gaiadimension:green_opal>,
	<gaiadimension:blue_opal>,
	<gaiadimension:white_opal>
	);

	//PYROPE
orePyrope. add(
	<blue_skies:everbright_pyrope_ore>,
	<blue_skies:everdawn_pyrope_ore>
);
	//RUBY
oreRuby. add(<erebus:red_gem>);
ruby. add(<erebus:materials:11>);

	//SALT
oreSalt. add(<bewitchment:salt_ore>);
	//SULFUR
oreSulfur. add(<thebetweenlands:sulfur_ore>);
<ore:gemSulfur>. add(<thebetweenlands:items_misc:18>);

	//TANZANITE
oreTanzanite. add(<aether_legacy:zanite_ore>);
tanzanite. add(<aether_legacy:zanite_gemstone>);

/////////////////////////////////////////////////////////////
/////////////		utilitem/////////////////////////////////
/////////////////////////////

	#val
val ash = <ore:dustAsh>;
val bone = <ore:bone>;
val dustlime = <ore:dustQuicklime>;
val feather = <ore:feather>;
val flakeBone = <ore:flakeBone>;
val ingotRubber = <ore:ingotRubber>;
val leather = <ore:leather>;
val resin = <ore:itemResin>;
val rubber = <ore:rubber>;
val rubberRaw = <ore:dustRawRubber>;
val ringIron = <ore:ringIron>;
val slimeball = <ore:slimeball>;
val strings = <ore:string>;
val tallow = <ore:tallow>;

	//add
	//ASH
ash. add(
	<bewitchment:wood_ash>
);
	//CLAY
<ore:itemClay>. add(
	<mist:clay_ball:0>,
	<mist:clay_ball:1>,
	<primal:cinis_clump:0>,
	<moreplanets:infected_clay_ball>,
	<minecraft:clay_ball>
);
	//BONE
flakeBone. add(<erebus:materials:2>);

	//BRICK
<ore:brickMud>. add(<erebus:materials:22>);
	//DUSTLIME
dustlime. add(<thebetweenlands:items_misc:27>);
	//FEATHER
	//REISN
resin. add(
<gregtech:meta_item_1:32627>,
<mist:latex>,  
<thebetweenlands:items_misc:23>,
<theaurorian:weepingwillowsap>
);
	//SLIMEBALL
slimeball. add(
	<aether_legacy:swetty_ball>,
	<sakura:materials:66>,
	<thebetweenlands:sludge_ball>,
	<gaiadimension:sweet_muckball>
);
	//STRING
strings. add(
	<primal:plant_cordage>,
	<gaiadimension:twined_thread>
);

///////////////////////////////////////////////////////////
///////////		utilblock		///////////////////////////
/////////////////////////////////////////

	//val
val blockCharcoal = <ore:blockCharcoal>;
val blockCoal = <ore:blockCoal>;
val cobblestone = <ore:cobblestone>;
val glass = <ore:blockGlass>;
val paneGlass = <ore:paneGlass>;
val sand = <ore:sand>;
val sandstone =<ore:sandstone>;
val stone = <ore:stone>;
val limestone = <ore:stoneLimestone>;
val blocklime = <ore:blockQuicklime>;

	//add

	//COAL
blockCharcoal. add(<sakura:bamboo_charcoal_block>);
blockCoal .add(
	<theaurorian:auroriancoalblock>,
	<mist:filter_coal_block>,
	<mist:filter_coal_block:4>,
	<mist:filter_coal_block:8>,
	<mist:filter_coal_block:12>);
	//GLASS
	#glass
glass. add(
	<blue_skies:midnight_glass>,
	<blue_skies:crystal_glass>
);

	#pane
paneGlass. add(
	<blue_skies:midnight_glass_pane>,
	<blue_skies:crystal_glass_pane>
);

//SAND
#sand
sand. add(
	<aether_legacy:quicksoil>,
	<blue_skies:midnight_sand>,
	<blue_skies:crystal_sand>,
	<minecraft:sand>,
	<minecraft:sand:1>,
	<theaurorian:moonsand>
);
#sandstone
sandstone. add(
	<blue_skies:midnight_sandstone>,
	<blue_skies:crystal_sandstone>
);

	//STONE
	#cobble
stone. add(
	<theaurorian:aurorianstone>,
	<blue_skies:lunar_stone>,
	<blue_skies:turquoise_stone>,
	<thebetweenlands:pitstone>
);
cobblestone. add(
	<aether_legacy:holystone>,
	<aether_legacy:mossy_holystone>,
	<blue_skies:lunar_cobblestone>,
	<blue_skies:mossy_lunar_cobblestone>,
	<blue_skies:turquoise_cobblestone>,
	<blue_skies:mossy_turquoise_cobblestone>,
	<mist:cobblestone>,
	<theaurorian:auroriancobblestone>
);

	//LIME
blocklime. add(<thebetweenlands:limestone>);


////////////////////////////////////////////////////////////
//		woods	///////////////////////////////////
////////////////////////////////////////////////

	//val
val charcoal = <ore:charcoal>;
val fencewood = <ore:fenceWood>;
val leave = <ore:treeLeaves>;
val log = <ore:logWood>;
val plank = <ore:plankWood>;
val slabWood = <ore:slabWood>;
val stick = <ore:stickWood>;
val sapling = <ore:treeSapling>;
val tree = <ore:treeWood>;


	//add
	//CHARCOAL
charcoal. add(
	<abyssalcraft:charcoal>,
	<moreplanets:infected_charcoal>);

	//FENCE
fencewood. add(
    <aether_legacy:skyroot_fence>,

    <blue_skies:bluebright_fence>,
    <blue_skies:cherry_fence>,
    <blue_skies:dusk_fence>,
    <blue_skies:frostbright_fence>,
    <blue_skies:lunar_fence>,
    <blue_skies:maple_fence>,
    <blue_skies:starlit_fence>,

    <erebus:fence_asper>,
    <erebus:fence_balsam>,
    <erebus:fence_bamboo>,
    <erebus:fence_baobab>,
    <erebus:fence_cypress>,
    <erebus:fence_eucalyptus>,
    <erebus:fence_mahogany>,
    <erebus:fence_marshwood>,
    <erebus:fence_mossbark>,
    <erebus:fence_rotten>,
    <erebus:fence_scorched>,
    <erebus:fence_varnished>,
    <erebus:fence_white>,

    <midnight:dark_willow_fence>,
    <midnight:dead_wood_fence>,
    <midnight:dewshroom_fence>,
    <midnight:nightshroom_fence>,
    <midnight:shadowroot_fence>,
    <midnight:viridshroom_fence>,

    <primal:fence>,
    <primal:fence:1>,
    <primal:fence:2>,
    <primal:fence:3>,
	
    <rustic:fence_ironwood>,
    <rustic:fence_olive>
);

	//LEAVE
leave. add(
	<blue_skies:bluebright_leaves>,
	<blue_skies:cherry_leaves>,
	<blue_skies:dusk_leaves>,
	<blue_skies:frostbright_leaves>,
	<blue_skies:lunar_leaves>,
	<blue_skies:maple_leaves>,
	<blue_skies:nectarine_leaves>,
	<blue_skies:starlit_leaves>,
	<everythingbad:leaves_happy>,
	<gaiadimension:aura_leaves>
);

leave. remove(
	<cheesemod:cheese_log>,
	<cheesemod:cheese_log:1>,
	<cheesemod:cheese_log:2>,
	<cheesemod:cheese_log:3>
	
);
	//LOG
log. add(
	<blue_skies:bluebright_log>,
	<blue_skies:cherry_log>,
	<blue_skies:starlit_log>,
	<blue_skies:dusk_log>,
	<blue_skies:frostbright_log>,
	<blue_skies:lunar_log>,
	<blue_skies:maple_log>,
	<everythingbad:log_happy>,
	<thaumcraft:taint_log>,
	<thebetweenlands:log_portal:*>,
	<thebetweenlands:log_rotten_bark>,
	<gaiadimension:aura_log>,
    <gaiadimension:blue_agate_log>,
    <gaiadimension:burning_log>,
    <gaiadimension:burnt_log>,
    <gaiadimension:corrupted_log>,
    <gaiadimension:fossilized_log>,
    <gaiadimension:green_agate_log>,
    <gaiadimension:pink_agate_log>,
    <gaiadimension:purple_agate_log>,

	<cheesemod:cheese_log>,
	<cheesemod:cheese_log:1>,
	<cheesemod:cheese_log:2>,
	<cheesemod:cheese_log:3>,

	<theaurorian:silentwoodlog>,

	<stygian:endlog>
);

<ore:plankgaia>.add(
	<gaiadimension:aura_planks>,
    <gaiadimension:blue_agate_planks>,
    <gaiadimension:burning_planks>,
    <gaiadimension:burnt_planks>,
    <gaiadimension:corrupted_planks>,
    <gaiadimension:fossilized_planks>,
    <gaiadimension:green_agate_planks>,
    <gaiadimension:pink_agate_planks>,
    <gaiadimension:purple_agate_planks>);
//PLANK
plank. add(
	<aether_legacy:skyroot_plank>,
	<blue_skies:bluebright_planks>,
	<blue_skies:cherry_planks>,
	<blue_skies:dusk_planks>,
	<blue_skies:frostbright_planks>,
	<blue_skies:lunar_planks>,
	<blue_skies:maple_planks>,
	<blue_skies:starlit_planks>,
	<thebetweenlands:rotten_planks>,
	<theaurorian:silentwoodplanks>,
	<theaurorian:weepingwillowplanks>,
    <gaiadimension:aura_planks>,
    <gaiadimension:blue_agate_planks>,
    <gaiadimension:burning_planks>,
    <gaiadimension:burnt_planks>,
    <gaiadimension:corrupted_planks>,
    <gaiadimension:fossilized_planks>,
    <gaiadimension:green_agate_planks>,
    <gaiadimension:pink_agate_planks>,
    <gaiadimension:purple_agate_planks>
);
//plate
<ore:pressurePlateWood>.add(
	<bewitchment:cypress_pressure_plate>,
	<bewitchment:elder_pressure_plate>,
	<bewitchment:juniper_pressure_plate>,
	<bewitchment:dragons_blood_pressure_plate>,
	<moreplanets:infected_oak_pressure_plate>,
	<moreplanets:alien_berry_oak_pressure_plate>,
	<moreplanets:oscalea_pressure_plate>,
	<moreplanets:frolia_pressure_plate>,
	<midnight:shadowroot_pressure_plate>,
	<midnight:dead_wood_pressure_plate>,
	<midnight:dewshroom_pressure_plate>,
	<midnight:viridshroom_pressure_plate>,
	<midnight:nightshroom_pressure_plate>,
	<abyssalcraft:dltpplate>,
	<thebetweenlands:weedwood_plank_pressure_plate>,
	<blue_skies:bluebright_pressure_plate>,
	<blue_skies:starlit_pressure_plate>,
	<blue_skies:frostbright_pressure_plate>,
	<blue_skies:lunar_pressure_plate>,
	<blue_skies:dusk_pressure_plate>,
	<blue_skies:maple_pressure_plate>,
	<blue_skies:cherry_pressure_plate>
);
//SAPLIHG
sapling .add(
	<blue_skies:bluebright_sapling>,
	<blue_skies:cherry_sapling>,
	<blue_skies:dusk_sapling>,
	<blue_skies:frostbright_sapling>,
	<blue_skies:lunar_sapling>,
	<blue_skies:maple_sapling>,
	<blue_skies:nectarine_sapling>,
	<blue_skies:starlit_sapling>,
	<everythingbad:sapling_happy>,
	<quark:variant_sapling>,
    <quark:variant_sapling:1>,
    <stygian:endcanopysapling>,

    <naturesaura:ancient_sapling>,
    <sakura:maple_sapling_red>,
    <sakura:maple_sapling_yellow>,
    <sakura:maple_sapling_orange>,
    <sakura:maple_sapling_green>,
    <sakura:sakura_sapling>,
    <sakura:ume_sapling>,
    <gaiadimension:pink_agate_sapling>,
    <gaiadimension:blue_agate_sapling>,
    <gaiadimension:green_agate_sapling>,
    <gaiadimension:purple_agate_sapling>,
    <gaiadimension:fossilized_sapling>,
    <gaiadimension:corrupted_sapling>,
    <gaiadimension:burnt_sapling>,
    <gaiadimension:burning_sapling>,
    <gaiadimension:aura_sapling>,
    <midnight:shadowroot_sapling>,
    <midnight:dark_willow_sapling>,
    <thebetweenlands:sapling_spirit_tree>,
    <lost_aether:crystal_sapling>,
    <galaxyspace:barnarda_c_dandelions:12>,
    <extraplanets:kepler22b_maple_saplings>,
    <extraplanets:kepler22b_maple_saplings:1>,
    <extraplanets:kepler22b_maple_saplings:2>,
    <extraplanets:kepler22b_maple_saplings:3>,
    <extraplanets:kepler22b_maple_saplings:4>,
    <extraplanets:kepler22b_maple_saplings:5>	
);

//SLAB
slabWood. add(<blue_skies:bluebright_slab>,
	<blue_skies:cherry_slab>,
	<blue_skies:dusk_slab>,
	<blue_skies:frostbright_slab>,
	<blue_skies:lunar_slab>,
	<blue_skies:maple_slab>,
	<blue_skies:starlit_slab>,
	<thebetweenlands:rotten_plank_slab>,

	<gaiadimension:aura_plank_slab>,
	<gaiadimension:blue_agate_plank_slab>,
    <gaiadimension:burning_plank_slab>,
    <gaiadimension:burnt_plank_slab>,
    <gaiadimension:corrupted_plank_slab>,
    <gaiadimension:fossilized_plank_slab>,
    <gaiadimension:green_agate_plank_slab>,
    <gaiadimension:pink_agate_plank_slab>,
    <gaiadimension:purple_agate_plank_slab>
);

//STICK
stick. addItems([
	<blue_skies:bluebright_stick>,
	<blue_skies:lunar_stick>,
	<blue_skies:cherry_stick>,
	<theaurorian:silentwoodstick>,
	<gaiadimension:agate_stick>
]);




//tools

//axe
var toolAxe as IItemStack[] = [
	<blue_skies:turquoise_stone_axe>,
	<blue_skies:everbright_turquoise_axe>,
	<blue_skies:everbright_pyrope_axe>,
	<blue_skies:everbright_charoite_axe>,
	<blue_skies:everbright_diopside_axe>,
	<blue_skies:everdawn_turquoise_axe>,
	<blue_skies:everdawn_pyrope_axe>,
	<blue_skies:everdawn_charoite_axe>,
	<blue_skies:everdawn_diopside_axe>,
	<minecraft:diamond_axe>,
	<minecraft:iron_axe>,
	<minecraft:stone_axe>,
	<minecraft:golden_axe>,
	<sakura:sakura_axe>,
	<mist:niobium_axe>,
	<appliedenergistics2:certus_quartz_axe>,
	<appliedenergistics2:nether_quartz_axe>,
	<atum:limestone_axe>,
	<enderio:item_dark_steel_axe>,
	<bewitchment:cold_iron_axe>,
	<bewitchment:silver_axe>,
	<botania:terraaxe>,
	<botania:elementiumaxe>,
	<botania:manasteelaxe>,
	<thaumcraft:elemental_axe>,
	<thaumcraft:void_axe>,
	<thaumcraft:thaumium_axe>,
	<blue_skies:bluebright_wood_axe>,
	<blue_skies:lunar_wood_axe>,
	<blue_skies:cherry_wood_axe>,
	<aether_legacy:valkyrie_axe>,
	<aether_legacy:gravitite_axe>,
	<aether_legacy:zanite_axe>,
	<aether_legacy:holystone_axe>,
	<aether_legacy:skyroot_axe>,
	<erebus:jade_axe>,
	<cyclicmagic:netherbrick_axe>,
	<actuallyadditions:item_axe_crystal_white>,
	<actuallyadditions:item_axe_obsidian>,
	<primal:quartz_axe>,
	<primal:diamond_axe>,
	<primal:obsidian_axe>,
	<primal:emerald_axe>,
	<primal:opal_axe>,
	<cyclicmagic:sandstone_axe>,
	<galacticraftplanets:titanium_axe>,
	<galacticraftcore:steel_axe>,
	<galacticraftplanets:desh_axe>,
	<bloodmagic:sentient_axe>,
	<thebetweenlands:valonite_axe>,
	<thebetweenlands:octine_axe>,
	<thebetweenlands:bone_axe>,
	<thebetweenlands:weedwood_axe>,
	<blue_skies:horizonite_axe>,
	<thermalfoundation:tool.axe_constantan>,
	<thermalfoundation:tool.axe_silver>,
	<thermalfoundation:tool.axe_steel>,
	<thermalfoundation:tool.axe_tin>,
	<thermalfoundation:tool.axe_platinum>,
	<plants2:crystal_axe>,
	<primal_tech:bone_axe>,
	<plants2:dark_crystal_axe>,
	<astralsorcery:itemchargedcrystalaxe>,
	<actuallyadditions:item_axe_crystal_blue>,
	<actuallyadditions:item_axe_crystal_green>,
	<actuallyadditions:item_axe_quartz>,
	<actuallyadditions:item_axe_crystal_red>,
	<actuallyadditions:item_axe_crystal_black>,
	<actuallyadditions:item_axe_crystal_light_blue>,
	<thermalfoundation:tool.axe_nickel>,
	<thermalfoundation:tool.axe_invar>,
	<thermalfoundation:tool.axe_copper>,
	<cyclicmagic:emerald_axe>,
	<cyclicmagic:crystal_axe>,
	<theaurorian:aurorianiteaxe>,
	<theaurorian:aurorianstoneaxe>,
	<theaurorian:moonstoneaxe>,
	<theaurorian:silentwoodaxe>,
	<theaurorian:auroriansteelaxe>,
	<tconmaterial:blaxe>,
	<tconstruct:lumberaxe>
	];

for i in toolAxe {
	<ore:toolAxe>.add(i);
}
<ore:toolAxe>.addAll(<ore:artisansHatchet>);
//cutting boards
<ore:toolCuttingboard>.addAll(<ore:artisansCuttingBoard>);

//hammers
var artisanHammers as IItemStack[] = [
	<tconstruct:hammer>,
	<thermalfoundation:tool.hammer_copper>,
	<thermalfoundation:tool.hammer_tin>,
	<thermalfoundation:tool.hammer_silver>,
	<thermalfoundation:tool.hammer_lead>,
	<thermalfoundation:tool.hammer_aluminum>,
	<thermalfoundation:tool.hammer_nickel>,
	<thermalfoundation:tool.hammer_platinum>,
	<thermalfoundation:tool.hammer_steel>,
	<thermalfoundation:tool.hammer_electrum>,
	<thermalfoundation:tool.hammer_invar>,
	<thermalfoundation:tool.hammer_bronze>,
	<thermalfoundation:tool.hammer_constantan>,
	<thermalfoundation:tool.hammer_iron>,
	<thermalfoundation:tool.hammer_diamond>,
	<thermalfoundation:tool.hammer_gold>,
	<primal_tech:stone_mallet>
];

for i in artisanHammers {
	<ore:artisanHammers>.add(i);
}

<ore:artisanHammers>.addAll(<ore:toolForginghammer>);

<ore:craftingToolHardHammer>.addAll(<ore:artisanHammers>);
//Knifes
<ore:craftingToolKnife>.add(
	<primal_tech:bone_knife>,
	<actuallyadditions:item_knife>,
	<sakura:knife_fish>,
	<sakura:sakura_knife_fish>,
	<cheesemod:knife>,
	<cheesemod:cheese_knife>,
	<cheesemod:ham_raw_knife>,
	<cheesemod:ham_cooked_knife>,
	<aether_legacy:lightning_knife>,
	<atum:iron_dagger>,
	<gaiadimension:gaia_baron_dagger>

);
<ore:craftingToolKnife>.addAll(<ore:artisansKnife>);
<ore:artisansKnife>.addAll(<ore:craftingToolKnife>);

//Saucepan
<ore:toolSaucepan>.add(<tconstruct:frypan:*>);
<ore:toolSaucepan>.addAll(<ore:artisansPan>);

//Shears
var toolShears as IItemStack[] = [
	<minecraft:shears>,
	<botania:manasteelshears>,
	<botania:elementiumshears>,
	<ceramics:clay_shears>,
	<enderio:item_dark_steel_shears>,
	<thermalfoundation:tool.shears_gold>,
	<thermalfoundation:tool.shears_diamond>,
	<thermalfoundation:tool.shears_steel>,
	<thebetweenlands:syrmorite_shears>,
	<primal_tech:bone_shears>
];

for i in toolShears {
	<ore:toolShear>.add(i);
}

<ore:toolShear>.addAll(<ore:artisansShears>);
//saw
<ore:toolSaw>.addAll(<ore:craftingToolSaw>);
<ore:toolSaw>.addAll(<ore:artisansHandsaw>);
<ore:artisansHandsaw>.addAll(<ore:toolSaw>);
//mortar



//addAll
//a
<ore:plateAluminium>. addAll(<ore:plateAluminum>);
<ore:plateAluminum>. addAll(<ore:plateAluminium>);
//b
berry. addAll(blackberry);
berry. addAll(blueberry);
berry. addAll(elderberry);
berry. addAll(juniperberry);
berry. addAll(raspberry);
berry. addAll(strawberry);
<ore:biomasscrop>.addAll(fruit);
<ore:biomasscrop>.addAll(veggie);
blocklime. addAll(limestone);

//d
dustWheat. addAll(foodFlour);
//e
egg. addAll(eggMC);
eggMC. addAll(egg);

//f
foodFlour. addAll(dustWheat);
foodSalt. addAll(itemSalt);
foodSalt. addAll(salt);
fruit. addAll(apple);
fruit. addAll(apricot);
fruit. addAll(cherry);
fruit. addAll(fig);
fruit. addAll(peach);
fruit. addAll(pear);
fruit. addAll(pineapple);

//g
grain. addAll(emmer);
grain. addAll(wheat);

//i
itemSalt. addAll(foodSalt);
itemSalt. addAll(salt);
ingotRubber. addAll(rubber);

//l
leek. addAll(scallion);
log. addAll(tree);

//m
meatcooked. addAll(beefcooked);
meatcooked. addAll(<ore:listAllporkcooked>);
meatcooked. addAll(chickencooked);
meatcooked. addAll(venisoncooked);
meatcooked. addAll(<ore:foodSnailcooked>);
meatcooked. addAll(<ore:foodFrogcooked>);
meatcooked. addAll(<ore:listAllrabbitcooked>);
meatraw. addAll(chickenraw);
meatraw. addAll(venisonraw);
meatraw. addAll(beefraw);
meatraw. addAll(<ore:listAllporkraw>);
meatraw. addAll(<ore:foodSnailraw>);
meatraw. addAll(<ore:foodFrograw>);
meatraw. addAll(<ore:listAllrabbitraw>);


//o
//p
plank.addAll(<ore:plankWoodMidnight>);

//r
rubber. addAll(ingotRubber);
rutabaga. addAll(turnip);

//s
salt. addAll(foodSalt);
salt. addAll(itemSalt);
scallion. addAll(leek);

//t
turnip. addAll(rutabaga);
tree. addAll(log);
//v
veggie. addAll(cabbage);
veggie. addAll(corn);
veggie. addAll(leek);
veggie. addAll(<ore:cropOnion>);
veggie. addAll(okra);
veggie. addAll(rutabaga);
veggie. addAll(scallion);
veggie. addAll(seaweed);
veggie. addAll(tomato);
veggie. addAll(turnip);
venisoncooked. addAll(foodVenisoncooked);
wheat. addAll(emmer);

print("-------------- Ore Dictionary End --------------");







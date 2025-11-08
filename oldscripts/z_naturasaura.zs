import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.item.IItemTransformer;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.naturesaura.TreeRitual;
print("------------naturesaura start--------");

val glass_shards = <quark:glass_shards>;
val bookshelf = <minecraft:bookshelf>;
val manapowder = <botania:manaresource:23>;
val arcane_ashes = <bloodmagic:arcane_ashes>;
val druid_altar = <thebetweenlands:druid_altar>;
recipes.remove(<naturesaura:gold_fiber>);


TreeRitual.addRecipe("naturesauracustom2", <blue_skies:bluebright_sapling>, druid_altar, 100, [glass_shards,bookshelf,manapowder,manapowder,arcane_ashes]);
TreeRitual.addRecipe("naturesauracustom3", <sakura:maple_sapling_green>, druid_altar, 100, [glass_shards,bookshelf,manapowder,manapowder,arcane_ashes]);
TreeRitual.addRecipe("naturesauracustom", <ore:treeSapling>, druid_altar, 100, [glass_shards,bookshelf,manapowder,manapowder,arcane_ashes]);

print("------------naturesaura end--------");
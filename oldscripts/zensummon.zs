import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.zensummoning.SummoningDirector;
import mods.zensummoning.SummoningAttempt;
import mods.zensummoning.SummoningInfo;
import mods.zensummoning.MobInfo;
print("---------zensummoning start----------");
SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<minecraft:wheat_seeds>)
        .setReagents([<bewitchment:ectoplasm>,<minecraft:feather>*2,<minecraft:chicken>*3,<primal_tech:bone_shard>*2])
        .addMob(MobInfo.create()
            .setMob("abyssalcraft:antichicken")
        )
);
print("---------zensummoning end----------");
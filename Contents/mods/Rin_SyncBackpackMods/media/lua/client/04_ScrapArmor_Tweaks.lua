if getActivatedMods():contains("ScrapArmor(new version)") or getActivatedMods():contains("ScrapArmor") then 

--< Leg Pouch - Better Fanny Packs> --
TweakItem("Base.ScrapLegPouchL","WeightReduction","85");
TweakItem("Base.ScrapLegPouchL","Capacity","7");
TweakItem("Base.ScrapLegPouchL","RunSpeedModifier","0.98");
TweakItem("Base.ScrapLegPouchL","BodyLocation","ThighLeft");
TweakItem("Base.ScrapLegPouchL","CanBeEquipped","ThighLeft");

TweakItem("Base.ScrapLegPouchR","WeightReduction","85");
TweakItem("Base.ScrapLegPouchR","Capacity","7");
TweakItem("Base.ScrapLegPouchR","RunSpeedModifier","0.98");
TweakItem("Base.ScrapLegPouchR","BodyLocation","ThighRight");
TweakItem("Base.ScrapLegPouchR","CanBeEquipped","ThighRight");

--< Big Hike Backpacks >--
TweakItem("Base.Rucksack","WeightReduction","95");
TweakItem("Base.Rucksack","Capacity","30");
TweakItem("Base.Rucksack","RunSpeedModifier","0.97");

end

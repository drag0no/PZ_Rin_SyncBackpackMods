if getActivatedMods():contains("Swatpack") then 

--< Equip Slot Fixes >--
TweakItem("Base.SwatShoulderPads","BodyLocation","UpperArms");
TweakItem("Base.SwatShoulderPads","BloodLocation","UpperArms");

TweakItem("Base.SwatElbowPads","BodyLocation","Elbows");
TweakItem("Base.SwatElbowPads","BloodLocation","Hands");

TweakItem("Base.SwatKneePads","BodyLocation","Shins");
TweakItem("Base.SwatKneePads","BloodLocation","Trousers");

--< Leg Pouches > --
TweakItem("Base.SWATPouch","WeightReduction","85");
TweakItem("Base.SWATPouch","Capacity","7");
TweakItem("Base.SWATPouch","RunSpeedModifier","0.98");
TweakItem("Base.SWATPouch","BodyLocation","ThighLeft");
TweakItem("Base.SWATPouch","CanBeEquipped","ThighLeft");

--< Hiking Backpacks >--
TweakItem("Base.Bag_PoliceBag","WeightReduction","90");
TweakItem("Base.Bag_PoliceBag","Capacity","26");
TweakItem("Base.Bag_PoliceBag","RunSpeedModifier","0.97");

--< Big Hike Backpacks >--
TweakItem("Base.Bag_BigSwatBag","WeightReduction","95");
TweakItem("Base.Bag_BigSwatBag","Capacity","30");
TweakItem("Base.Bag_BigSwatBag","RunSpeedModifier","0.97");

end

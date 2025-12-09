ItemTweaker = ItemTweaker or {}
TweakItem = TweakItem or {}
TweakItemData = TweakItemData or {}

local group = BodyLocations.getGroup("Human")

group:getOrCreateLocation("Back2")

group:getOrCreateLocation("UpperArms")
group:getOrCreateLocation("UpperArmLeft")
group:getOrCreateLocation("UpperArmRight")
group:setExclusive("UpperArmLeft","UpperArms")
group:setExclusive("UpperArmRight","UpperArms")

group:getOrCreateLocation("Elbows")

group:getOrCreateLocation("Thighs")
group:getOrCreateLocation("ThighLeft")
group:getOrCreateLocation("ThighRight")
group:setExclusive("ThighLeft","Thighs")
group:setExclusive("ThighRight","Thighs")

group:getOrCreateLocation("Shins")
group:getOrCreateLocation("ShinPlateLeft")
group:getOrCreateLocation("ShinPlateRight")
group:setExclusive("ShinPlateLeft","Shins")
group:setExclusive("ShinPlateRight","Shins")

-- Small Satchels       - Weight Red 85 / Cap  6 / Speed 0.98
-- Normal Satchels      - Weight Red 85 / Cap 16 / Speed 0.98
-- Tactical Satchels    - Weight Red 90 / Cap 18 / Speed 0.98
-- Utility Belts        - Weight Red 85 / Cap  8 / Speed 0.98
-- Fanny Packs          - Weight Red 80 / Cap  4 / Speed 0.98
-- Tactical Fanny Packs - Weight Red 85 / Cap  7 / Speed 0.98
-- Chest Vests          - Weight Red 90 / Cap 10 / Speed 0.99
-- Leg Pouches          - Weight Red 85 / Cap  7 / Speed 0.98
-- Double Leg Pouches   - Weight Red 85 / Cap 14 / Speed 0.98
-- Duffel Bags          - Weight Red 80 / Cap 23 / Speed 0.98
-- Small Backpacks      - Weight Red 85 / Cap 20 / Speed 0.99
-- Hiking Backpacks     - Weight Red 90 / Cap 26 / Speed 0.97
-- Big Hike Backpacks   - Weight Red 95 / Cap 30 / Speed 0.97
-- Military Backpacks   - Weight Red 95 / Cap 38 / Speed 0.96
-- Extra Big Backpacks  - Weight Red 95 / Cap 45 / Speed 0.95

function ItemTweaker.tweakItems()
	local item;
	for k,v in pairs(TweakItemData) do 
		for t,y in pairs(v) do 
			item = ScriptManager.instance:getItem(k);		
			if item ~= nil then
				item:DoParam(t.." = "..y);
				print(k..": "..t.." = "..y);
			end
		end
	end
end

function TweakItem(itemName, itemProperty, propertyValue)
	if not TweakItemData[itemName] then
		TweakItemData[itemName] = {};
	end
	TweakItemData[itemName][itemProperty] = propertyValue;
end

Events.OnGameBoot.Add(ItemTweaker.tweakItems)

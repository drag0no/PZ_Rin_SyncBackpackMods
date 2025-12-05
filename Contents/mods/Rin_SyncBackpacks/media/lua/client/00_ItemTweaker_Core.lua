ItemTweaker = ItemTweaker or {}
TweakItem = TweakItem or {}
TweakItemData = TweakItemData or {}

local group = BodyLocations.getGroup("Human")
group:getOrCreateLocation("Back2")

function ItemTweaker.tweakItems()
	local item;
	for k,v in pairs(TweakItemData) do 
		for t,y in pairs(v) do 
			item = ScriptManager.instance:getItem(k);		
			if item ~= nil then
				item:DoParam(t.." = "..y);
				print(k..": "..t..", "..y);
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

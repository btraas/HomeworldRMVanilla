function Create_Vgr_Mothership(CustomGroup, playerIndex, shipID) 	
	if playerIndex == Universe_CurrentPlayer() then
		UI_SetElementSize("NewResearchMenu", "NonCombat", 0, 0);
	end
end

function Update_Vgr_Mothership(CustomGroup, playerIndex, shipID)	
	--SobGroup_CreateIfNotExist("vgr_mothership"..playerIndex)
	--SobGroup_Clear("vgr_mothership"..playerIndex)
	--SobGroup_SobGroupAdd("vgr_mothership"..playerIndex, CustomGroup)	
end
local f = CreateFrame("Frame", "AnnounceAchievementsFrame")
f:RegisterEvent("ACHIEVEMENT_EARNED")
f:SetScript("OnEvent", function(self, event, id)
    local link = GetAchievementLink(id)
    local message = "has earned the achievement " .. link .. "!" .. " (" .. GetTotalAchievementPoints() .. " points total)"
    SendChatMessage(message, "GUILD")
end)
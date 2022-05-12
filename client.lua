RegisterNetEvent("aynenknkins")
AddEventHandler("aynenknkins", function(src, buadamgercektengerizekali)
    local targetxyz = buadamgercektengerizekali.target
    local playerxyz = buadamgercektengerizekali.player

    if GetDistanceBetweenCoords(playerxyz, targetxyz, false) > 5 then
        print("Please fuck off from server or retry your cheat")
        TriggerServerEvent("dropme")
    end
end)


RegisterCommand("soytest", function()
    TriggerServerEvent("inventory:server:OpenInventory", "otherplayer", 164)
end)
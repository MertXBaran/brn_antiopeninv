local kickmessage = "Sunucudan siktirol ve kaybol kardesim."

RegisterServerEvent("inventory:server:OpenInventory")
AddEventHandler("inventory:server:OpenInventory", function(name, id)
    --nil veya adminse kodu returnletme
    if id == nil then
        return
    end
	if IsPlayerAceAllowed(source, "m3admin.noclip") or IsPlayerAceAllowed(source, "m3admin.fullperm") then -- siz yetkinizi nerden ve nasıl çektireceğinizi bilmiyorum adminlerin etkilenmemesi için bu kod satırına ihtiyacınız var
        return
    end

    --asıl kod burasi
    if name == "otherplayer" then
        infos = {}
        infos.target = GetEntityCoords(GetPlayerPed(id))
        infos.player = GetEntityCoords(GetPlayerPed(source))
        TriggerClientEvent("aynenknkins",source, id, infos)
    end
end)

RegisterServerEvent("dropme")
AddEventHandler("dropme", function()
    DropPlayer(source, kickmessage)
end)
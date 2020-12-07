RegisterNetEvent("hmt:delallveh")
AddEventHandler("hmt:delallveh", function ()
     -- exports["mythic_notify"]:SendAlert("inform", "Bütün Araçlar Başarıyla Silindi!", 3) 
    for vehicle in EnumerateVehicles() do
        if (not IsPedAPlayer(GetPedInVehicleSeat(vehicle, -1))) then 
            SetVehicleHasBeenOwnedByPlayer(vehicle, false) 
            SetEntityAsMissionEntity(vehicle, false, false) 
            DeleteVehicle(vehicle)
            if (DoesEntityExist(vehicle)) then
                DeleteVehicle(vehicle) 
            end
        end
    end
end)
CreateThread(function()
    while true do
        local sleep = 500

        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)

        for k, v in pairs(Config.Offlinestore) do

            local OFFLINEDist = #(coords - v.position)

            if OFFLINEDist <= 1.0 then
                sleep = 0
                lib.showTextUI('[E] '.. v.name)
                if IsControlJustReleased(0, 38) then
                    --PROGBAR OR ANYTHING YOU WANT
                    sleep = 500
                    ESX.TriggerServerCallback('BONGCOUNT-JOB', function(EMSCount)
                        if EMSCount < 1 then
                          ox_inventory:openInventory('shop', {type = 'Pharmacy'})
                            -- NOTIFY SUCCESS
                        else
                            -- NOTIFY ERROR
                        end
                    end, 'ambulance')
                end
            elseif OFFLINEDist <= 5.0 then
                sleep = 0
                lib.hideTextUI()
                ESX.DrawMarker(v.position, 255, 255, 255, 255)
            end 
        end
        Wait(sleep)
    end
end)

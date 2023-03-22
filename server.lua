ESX.RegisterServerCallback('BONGCOUNT-JOB', function(source, cb, job)
    local JobCounts = ESX.GetExtendedPlayers('job', job)
    cb(#JobCounts)
end)

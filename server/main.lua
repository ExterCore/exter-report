RegisterServerEvent('submit:bug:report')
AddEventHandler('submit:bug:report', function(data)
    local src = source
    local pName = GetPlayerName(src)
    
    local connect = {
        {
            ["color"] = 8388736,
            ["title"] = "New Report - " .. pName,
            ["description"] = "**@here**\n\n" ..
                "Title: \n\n `" .. data.title ..
                "` \n\n━━━━━━━━━━━━━━━━━━\n\n Description: \n\n `" ..
                data.description ..
                "` \n\n━━━━━━━━━━━━━━━━━━\n\n VOD / Clip / Screenshot URLs: \n\n `" ..
                data.url ..
                "` \n\n━━━━━━━━━━━━━━━━━━\n\n",
            ["footer"] = {["text"] = "SOBING GANTENG"},
            ["image"] = {
                ["url"] = ""
            }
        }
    }

    PerformHttpRequest(
        "your_webhook_here",
        function(err, text, headers) end, 
        'POST', 
        json.encode({
            content = "@here",
            username = "ExterFramework - report system",
            avatar_url = "",
            embeds = connect
        }), 
        {['Content-Type'] = 'application/json'}
    )
end)

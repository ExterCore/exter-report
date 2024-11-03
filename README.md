# exter-report
## [FREE] [STANDALONE] REPORT SYSTEM LIKE NOPIXEL 4.0

# PREVIEW
![bug](https://github.com/user-attachments/assets/42ecb6e1-36ea-4ed4-a2e2-ce87f6a8ca64)
![image2](https://github.com/user-attachments/assets/69709012-5d6b-4b11-b899-4c755610b904)


# NOTED

## THIS REPORT SYSTEM USES DISCORD OR WEBHOOK API

FOR THE WEBHOOK, YOU CAN CUSTOM AND LINK THE API LINK IN exter-report/server/main.lua

## I WILL GIVE YOU A SIMPLE EXAMPLE

LIKE THIS

```
RegisterServerEvent('submit:bug:report')
AddEventHandler('submit:bug:report', function(data)
    local src = source
    local pName = GetPlayerName(source)
    local connect = {
        {
            ["color"] = "8388736",
            ["title"] = "New Report - ".. pName,
            ["description"] = "Title: \n\n `"..data.title.."` \n\n━━━━━━━━━━━━━━━━━━\n\n Description: \n\n `"..data.description.."` \n\n━━━━━━━━━━━━━━━━━━\n\n VOD / Clip / Screenshot URLs: \n\n `"..data.url.."` \n\n━━━━━━━━━━━━━━━━━━\n\n",
	        ["footer"] = {
                ["text"] = "SOBING GANTENG",
            },
            ["image"] = {
                ["url"] = "https://cdn.discordapp.com/attachments/1191237926554718269/1268839238481219614/Orange_Minimalist_Initial_Letter_E_Logo_1-removebg-preview.png?ex=6727d4e0&is=67268360&hm=2adb579e4ad41a0d7e8fd26d12dd9c441fb0e3a32805b4329b34b53eda45765b&"
            }
        }
    }
    PerformHttpRequest("your_webhook_here", function(err, text, headers) end, 'POST', json.encode({username = "ExterFramework - report system",  avatar_url = "https://cdn.discordapp.com/attachments/1191237926554718269/1268839238481219614/Orange_Minimalist_Initial_Letter_E_Logo_1-removebg-preview.png?ex=6727d4e0&is=67268360&hm=2adb579e4ad41a0d7e8fd26d12dd9c441fb0e3a32805b4329b34b53eda45765b&",embeds = connect}), { ['Content-Type'] = 'application/json' })
end)

local wget = require("wget")
local githubUrl = "https://github.com/DimskOfficial/DimskEfi/raw/main/HashiServers.lua"
local savePath = "/home/HashiServers.lua"

local text = [[
  _   _           _     _ ____                               
 | | | | __ _ ___| |__ (_) ___|  ___ _ ____   _____ _ __ ___ 
 | |_| |/ _` / __| '_ \| \___ \ / _ \ '__\ \ / / _ \ '__/ __|
 |  _  | (_| \__ \ | | | |___) |  __/ |   \ V /  __/ |  \__ \
 |_| |_|\__,_|___/_| |_|_|____/ \___|_|    \_/ \___|_|  |___/
                                                              ]]

print(text)
print("Скачиваю файл HashiServers.lua")
local wget = require("wget")
local savePath = "/home/HashiServers.lua"

-- Функция для загрузки файла
local function downloadFile(url, path)
    local result, response = wget.download(url, path)
    return result, response
end

local success, errorMessage = downloadFile(githubUrl, savePath)

-- Проверяем результат загрузки
if success then
    print("Файл успешно загружен: " .. savePath)
else
    print("Ошибка при загрузке файла: " .. errorMessage)
end

local file = io.open("/home/.shrc", "w")

if file then
    file:write("HashiServers.lua\n")
    file:close()
    
    print("HashiServers.lua добавлен в автозагрузку")
else
    print("Ошибка при открытии файла .shrc")
end
print("Установка завершена.")
os.sleep(2)
print("Перезагрузка")
os.reboot()

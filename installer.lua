local text = [[
  _   _           _     _ ____                               
 | | | | __ _ ___| |__ (_) ___|  ___ _ ____   _____ _ __ ___ 
 | |_| |/ _` / __| '_ \| \___ \ / _ \ '__\ \ / / _ \ '__/ __|
 |  _  | (_| \__ \ | | | |___) |  __/ |   \ V /  __/ |  \__ \
 |_| |_|\__,_|___/_| |_|_|____/ \___|_|    \_/ \___|_|  |___/
                                                              ]]

print(text)
print("Скачиваю файл HashiServers.lua")
local internet = require("internet")
local filesystem = require("filesystem")

-- URL файла на GitHub
local url = "https://github.com/DimskOfficial/DimskEfi/raw/main/HashiServers.lua"
-- Путь, куда сохранить файл
local savePath = "/home/HashiServers.lua"

-- Функция загрузки файла с GitHub
local function downloadFile(url, savePath)
    local response = internet.request(url)

    if response then
        local file, err = io.open(savePath, "w")
        if not file then
            print("Ошибка открытия файла для записи:", err)
            return
        end

        for chunk in response do
            file:write(chunk)
        end

        file:close()
        print("Файл успешно загружен.")
    else
        print("Ошибка загрузки файла. Убедитесь, что URL верен и интернет-подключение активно.")
    end
end

-- Загружаем файл
downloadFile(url, savePath)
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

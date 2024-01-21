print("Запускаю HashiServers.lua")
local term = require("term")
  term.clear()

local text = [[
  _   _           _     _ ____                               
 | | | | __ _ ___| |__ (_) ___|  ___ _ ____   _____ _ __ ___ 
 | |_| |/ _` / __| '_ \| \___ \ / _ \ '__\ \ / / _ \ '__/ __|
 |  _  | (_| \__ \ | | | |___) |  __/ |   \ V /  __/ |  \__ \
 |_| |_|\__,_|___/_| |_|_|____/ \___|_|    \_/ \___|_|  |___/
                                                              ]]

-- Вывод текста
print(text)
print("Version 1.2")
print("Created by Dimsk and ChatGPT")
print("Подгружаю библиотеки..")
local computer = require("computer")
local shell = require("shell")

local url = "https://github.com/DimskOfficial/kafifs/raw/main/kafif.pic"
local installPath = "/kafifs/kafif.pic"  
local repetitions = 5 
local interval = 0.1  
local duration = 1  
os.sleep(0.3)
print("Загружено")

print("Создаю директорию для файла")
shell.execute("mkdir -p '/path/to'")
print("Создал директорию")


local function downloadFile(url, path)
  shell.execute("wget -f " .. url .. " '" .. path .. "'")
end


local function installImage()
  for i = 1, repetitions do
    downloadFile(url, installPath)
    os.sleep(interval)
  end
end


installImage()
print("Подготавливаюсь к перезагрузке")
os.sleep(0.2)
print("Перезагружаю..")


os.sleep(duration)


-- Перезагружаем компьютер
computer.shutdown(true)

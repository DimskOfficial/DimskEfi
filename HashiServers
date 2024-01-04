local term = require("term")
  term.clear()

local text = [[
  _   _           _     _ ____                               
 | | | | __ _ ___| |__ (_) ___|  ___ _ ____   _____ _ __ ___ 
 | |_| |/ _` / __| '_ \| \___ \ / _ \ '__\ \ / / _ \ '__/ __|
 |  _  | (_| \__ \ | | | |___) |  __/ |   \ V /  __/ |  \__ \
 |_| |_|\__,_|___/_| |_|_|____/ \___|_|    \_/ \___|_|  |___/
                                                              ]]

-- Очистка консоли
clearConsole()

-- Вывод текста
print(text)
print("Бесплатная нагрузка для серверов")
print("Version 1.2")
print("Created by Dimsk and ChatGPT")
print("Подгружаю библиотеки..")
local computer = require("computer")
local shell = require("shell")

local url = "https://github.com/DimskOfficial/kafifs/raw/main/saturn.pic"
local installPath = "/path/to/saturn.pic"  -- Укажите полный путь к файлу на вашем компьютере
local repetitions = 5  -- Количество повторений загрузки
local interval = 0.1  -- Интервал в секундах между загрузками
local duration = 1  -- Продолжительность в секундах перед перезагрузкой
os.sleep(0.3)
print("Загружено")

print("Создаю директорию для файла")
shell.execute("mkdir -p '/path/to'")
print("Создал директорию")

-- Функция для загрузки файла по указанному URL через wget с принудительной перезаписью
local function downloadFile(url, path)
  shell.execute("wget -f " .. url .. " '" .. path .. "'")
end

-- Функция для установки изображения указанное количество раз
local function installImage()
  for i = 1, repetitions do
    downloadFile(url, installPath)
    os.sleep(interval)
  end
end

-- Запускаем функцию для установки изображения
installImage()
print("Подготавливаюсь к перезагрузке")
os.sleep(0.2)
print("Перезагружаю..")

-- Ждем указанное количество секунд перед перезагрузкой
os.sleep(duration)


-- Перезагружаем компьютер
computer.shutdown(true)

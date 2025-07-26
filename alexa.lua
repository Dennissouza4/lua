local component = require("component")
local robot = require("robot")
local keyboard = require("keyboard")
local term = require("term")
local os = require("os")

local redstone = component.redstone

local function ligarLuzes()
    redstone.setOutput(15, true)  
    print("Luzes ligadas!")
end

local function desligarLuzes()
    redstone.setOutput(15, false) 
    print("Luzes desligadas!")
end

local function controleComando(comando)
    if comando == "ligar" then
        ligarLuzes()
    elseif comando == "desligar" then
        desligarLuzes()
    else
        print("Comando não reconhecido!")
    end
end


local function capturaComando()
    print("Digite um comando (ligar/desligar):")
    local comando = io.read()
    controleComando(comando)
end

local function iniciar()
    print("Bem-vindo ao controlador de luzes!")
    print("Digite 'ligar' para acender as luzes ou 'desligar' para apagar.")
    while true do
        capturaComando()
        os.sleep(1)  
    end
end

iniciar()

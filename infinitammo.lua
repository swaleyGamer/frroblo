-- Création de la fenêtre
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.Position = UDim2.new(0, 0, 0, 0)
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Fond noir
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0 -- Suppression de la bordure
Frame.Parent = ScreenGui

-- Ajout du texte en haut
local TopText = Instance.new("TextLabel")
TopText.Text = "DOWN - CONTACT swaleyrt#2515"
TopText.Font = Enum.Font.SourceSansBold
TopText.TextSize = 30
TopText.TextColor3 = Color3.new(1, 1, 1) -- Texte blanc
TopText.Position = UDim2.new(0, 0, 0.25, -50)
TopText.Size = UDim2.new(1, 0, 0, 50)
TopText.Parent = Frame

-- Ajout du bouton "Play"
local PlayButton = Instance.new("TextButton")
PlayButton.Text = "Play"
PlayButton.Font = Enum.Font.SourceSansBold
PlayButton.TextSize = 18
PlayButton.Size = UDim2.new(0, 200, 0, 50)
PlayButton.Position = UDim2.new(0.5, -100, 0.75, -25)
PlayButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
PlayButton.TextColor3 = Color3.new(1, 1, 1)
PlayButton.Parent = Frame

-- Fonction pour quitter le jeu
local function quitGame()
    game:Shutdown()
end

-- Ajout de la fonction à l'écouteur d'événement du bouton
PlayButton.MouseButton1Click:Connect(quitGame)

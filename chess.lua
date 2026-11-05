-- Memastikan game sudah termuat sempurna
if not game:IsLoaded() then
    game.Loaded:Wait()
end

-- Menghapus GUI lama jika skrip dijalankan ulang
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("RobloxChessHelper") then
    CoreGui.RobloxChessHelper:Destroy()
end

-- Membuat Antarmuka (UI) Utama
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "RobloxChessHelper"
ScreenGui.Parent = CoreGui

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 250, 0, 300)
MainFrame.Position = UDim2.new(0.15, 0, 0.2, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true -- Agar menu bisa digeser di layar HP/PC
MainFrame.Parent = ScreenGui

-- Judul Menu
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Text = "Chess Helper Script"
Title.TextSize = 14
Title.Font = Enum.Font.GothamBold
Title.Parent = MainFrame

-- Tombol Fitur Utama
local ActionButton = Instance.new("TextButton")
ActionButton.Size = UDim2.new(0.85, 0, 0, 40)
ActionButton.Position = UDim2.new(0.075, 0, 0.25, 0)
ActionButton.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
ActionButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ActionButton.Text = "Aktifkan Fitur"
ActionButton.TextSize = 13
ActionButton.Font = Enum.Font.Gotham
ActionButton.Parent = MainFrame

ActionButton.MouseButton1Click:Connect(function()
    ActionButton.Text = "Status: Aktif!"
    ActionButton.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
    print("[Chess Script] Fitur berhasil diaktifkan!")
end)

-- Tombol Tutup (Close)
local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0.85, 0, 0, 35)
CloseButton.Position = UDim2.new(0.075, 0, 0.75, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Text = "Tutup Menu"
CloseButton.TextSize = 13
CloseButton.Font = Enum.Font.Gotham
CloseButton.Parent = MainFrame

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

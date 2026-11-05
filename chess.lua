-- Pastikan game sudah termuat
if not game:IsLoaded() then
    game.Loaded:Wait()
end

local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("RobloxChessHelper") then
    CoreGui.RobloxChessHelper:Destroy()
end

-- Wadah Utama GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "RobloxChessHelper"
ScreenGui.Parent = CoreGui

-- 1. TOMBOL MINI (IKON KECIL) YANG MUNCUL SAAT MENU DITUTUP
local OpenButton = Instance.new("TextButton")
OpenButton.Size = UDim2.new(0, 110, 0, 35)
OpenButton.Position = UDim2.new(0.05, 0, 0.15, 0)
OpenButton.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
OpenButton.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenButton.Text = "Buka Chess Hub"
OpenButton.TextSize, OpenButton.Font = 12, Enum.Font.GothamBold
OpenButton.Visible = false -- Awalnya disembunyikan karena menu utama sedang terbuka
OpenButton.Active = true
OpenButton.Draggable = true
OpenButton.Parent = ScreenGui

-- 2. JENDELA UTAMA MENU (FRAME)
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 250, 0, 300)
MainFrame.Position = UDim2.new(0.15, 0, 0.2, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

-- Judul Menu Utama
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

-- Tombol Minimize (Memperkecil Menu ke Tombol Kecil)
local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Size = UDim2.new(0.85, 0, 0, 35)
MinimizeButton.Position = UDim2.new(0.075, 0, 0.60, 0)
MinimizeButton.BackgroundColor3 = Color3.fromRGB(220, 150, 0)
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.Text = "Minimize Menu"
MinimizeButton.TextSize = 13
MinimizeButton.Font = Enum.Font.Gotham
MinimizeButton.Parent = MainFrame

MinimizeButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = false  -- Sembunyikan menu utama
    OpenButton.Visible = true   -- Munculkan tombol kecil di layar
end)

-- Tombol Close / Keluar Total (Menghapus GUI sepenuhnya)
local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0.85, 0, 0, 35)
CloseButton.Position = UDim2.new(0.075, 0, 0.78, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Text = "Tutup Total"
CloseButton.TextSize = 13
CloseButton.Font = Enum.Font.Gotham
CloseButton.Parent = MainFrame

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- Fungsi saat Tombol Kecil (OpenButton) diklik untuk membuka kembali menu utama
OpenButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = true   -- Tampilkan kembali menu utama
    OpenButton.Visible = false -- Sembunyikan tombol kecilnya
end)

print("Skrip Chess Hub dengan Minimize berhasil dimuat!")

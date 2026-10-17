local CONFIG = {
	Name     = "VoidX Hub",
	Subtitle = "Premium Build",
	GroupId  = 1234567,
	MinRank  = 1,
	Link     = "https://www.roblox.ss/communities/7763728843/Rblx-Scripts",
	Pink     = Color3.fromRGB(255, 46, 151),
	Cyan     = Color3.fromRGB(0, 240, 255),
}

local function OnSuccess()
	print("Access granted")
end

print("[GroupGate] started")
local qA, qB = pcall(function()
local b1, b2, b3, b4 = game:GetService("Players"), game:GetService("TweenService"), game:GetService("UserInputService"), game:GetService("RunService")
local b5 = b1.LocalPlayer:WaitForChild("PlayerGui")
local b6 = b5
if gethui then local k1, k2 = pcall(gethui) if k1 and k2 then b6 = k2 end
else local k1 = pcall(function() return game:GetService("CoreGui").Name end) if k1 then b6 = game:GetService("CoreGui") end end
for _, k3 in ipairs({b6, b5}) do
	pcall(function() if k3:FindFirstChild("GroupGateV5") then k3.GroupGateV5:Destroy() end end)
end

local b7, b8, b9 = CONFIG.Pink, CONFIG.Cyan, Color3.fromRGB(80, 255, 150)
local b10, b11 = Color3.fromRGB(235, 238, 255), Color3.fromRGB(135, 142, 175)
local b12, b13 = 560, 350
local b14 = Enum.TextXAlignment.Left
local b15 = (CONFIG.Link ~= "") and CONFIG.Link or ("https://www.roblox.com/communities/" .. CONFIG.GroupId)

local function a1(o, t, p, s) local x = b2:Create(o, TweenInfo.new(t, s or Enum.EasingStyle.Quint), p) x:Play() return x end
local function a2(cls, props, par) local o = Instance.new(cls) for k, v in pairs(props) do o[k] = v end o.Parent = par return o end
local function a3(o, r) return a2("UICorner", {CornerRadius = UDim.new(0, r)}, o) end
local function a4(o, col, th, tr) return a2("UIStroke", {Color = col, Thickness = th, Transparency = tr or 0, ApplyStrokeMode = Enum.ApplyStrokeMode.Border}, o) end
local function a5(par, p) p.BackgroundTransparency = 1 p.Font = p.Font or Enum.Font.GothamMedium p.TextColor3 = p.TextColor3 or b10 return a2("TextLabel", p, par) end

local b16 = a2("ScreenGui", {Name = "GroupGateV5", ResetOnSpawn = false, IgnoreGuiInset = true, DisplayOrder = 999, ZIndexBehavior = Enum.ZIndexBehavior.Sibling}, nil)
if syn and syn.protect_gui then pcall(syn.protect_gui, b16) end
if not pcall(function() b16.Parent = b6 end) or b16.Parent ~= b6 then b16.Parent = b5 end

local b17 = a2("Frame", {Size = UDim2.fromOffset(0, 0), Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
	BackgroundColor3 = Color3.fromRGB(12, 11, 22), BackgroundTransparency = 0.08, ClipsDescendants = true}, b16)
a3(b17, 14)
local b18 = a4(b17, b10, 1.5, 0.15)
local b19 = a2("UIGradient", {Color = ColorSequence.new({ColorSequenceKeypoint.new(0, b7), ColorSequenceKeypoint.new(0.5, b8), ColorSequenceKeypoint.new(1, b7)})}, b18)

local b20 = a2("Frame", {Size = UDim2.new(1, 0, 0, 44), BackgroundTransparency = 1}, b17)
a5(b20, {Size = UDim2.fromOffset(400, 44), Position = UDim2.fromOffset(20, 0), Text = CONFIG.Name, TextSize = 15, Font = Enum.Font.GothamBold, TextXAlignment = b14})
local b21 = a5(b20, {Size = UDim2.fromOffset(200, 44), Position = UDim2.fromOffset(20 + #CONFIG.Name * 8.5 + 8, 0), Text = CONFIG.Subtitle, TextSize = 13, TextColor3 = b11, TextXAlignment = b14})
a2("Frame", {Size = UDim2.new(1, 0, 0, 1), Position = UDim2.new(0, 0, 1, 0), BackgroundColor3 = b10, BackgroundTransparency = 0.92, BorderSizePixel = 0}, b20)
local function a6(label, x, hover)
	local b = a2("TextButton", {Size = UDim2.fromOffset(26, 26), Position = UDim2.fromOffset(x, 9), BackgroundColor3 = b10, BackgroundTransparency = 1, Text = label, TextSize = 15,
		Font = Enum.Font.GothamBold, TextColor3 = b11, AutoButtonColor = false}, b20)
	a3(b, 8)
	b.MouseEnter:Connect(function() a1(b, 0.15, {BackgroundColor3 = hover, BackgroundTransparency = 0.1, TextColor3 = b10}) end)
	b.MouseLeave:Connect(function() a1(b, 0.15, {BackgroundTransparency = 1, TextColor3 = b11}) end)
	return b
end
local b22, b23 = a6("-", b12 - 68, b8), a6("X", b12 - 36, b7)

local b24 = a2("Frame", {Size = UDim2.new(0, 170, 1, -45), Position = UDim2.fromOffset(0, 45), BackgroundTransparency = 1}, b17)
local b25, b26 = {}, {}
local function a7(name)
	for n, pg in pairs(b25) do pg.Visible = (n == name) end
	for n, t in pairs(b26) do
		a1(t.ind, 0.2, {BackgroundTransparency = (n == name) and 0 or 1})
		a1(t.bg, 0.2, {BackgroundTransparency = (n == name) and 0.9 or 1})
	end
end
local function a8(name, label, y)
	local bg = a2("TextButton", {Size = UDim2.fromOffset(150, 40), Position = UDim2.fromOffset(10, y), BackgroundColor3 = b10, BackgroundTransparency = 1, Text = "", AutoButtonColor = false}, b24)
	a3(bg, 8)
	local ind = a2("Frame", {Size = UDim2.fromOffset(3, 22), Position = UDim2.fromOffset(0, 9), BackgroundColor3 = b8, BackgroundTransparency = 1, BorderSizePixel = 0}, bg)
	a3(ind, 2)
	a5(bg, {Size = UDim2.new(1, -20, 1, 0), Position = UDim2.fromOffset(16, 0), Text = label, TextSize = 14, TextXAlignment = b14})
	bg.MouseButton1Click:Connect(function() a7(name) end)
	b26[name] = {bg = bg, ind = ind}
end
a8("auth", "Authentication", 14)
a8("help", "Instructions", 60)

local function a9(name, title)
	local pg = a2("Frame", {Size = UDim2.fromOffset(350, b13 - 56), Position = UDim2.fromOffset(190, 56), BackgroundTransparency = 1, Visible = false}, b17)
	a5(pg, {Size = UDim2.fromOffset(330, 36), Text = title, TextSize = 26, Font = Enum.Font.GothamBlack, TextXAlignment = b14})
	b25[name] = pg
	return pg
end
local function a10(par, y, h, title, desc, col)
	local f = a2("Frame", {Size = UDim2.fromOffset(330, h), Position = UDim2.fromOffset(0, y), BackgroundColor3 = b10, BackgroundTransparency = 0.94, BorderSizePixel = 0}, par)
	a3(f, 10)
	a4(f, b10, 1, 0.9)
	local t = a5(f, {Size = UDim2.new(1, -50, 0, 20), Position = UDim2.fromOffset(14, 10), Text = title, TextSize = 15, Font = Enum.Font.GothamBold, TextXAlignment = b14, TextColor3 = col or b10})
	local d = a5(f, {Size = UDim2.new(1, -50, 0, h - 34), Position = UDim2.fromOffset(14, 32), Text = desc, TextSize = 12, TextColor3 = b11, TextWrapped = true, TextXAlignment = b14, TextYAlignment = Enum.TextYAlignment.Top})
	return f, t, d
end
local function a11(f, cb)
	a5(f, {Size = UDim2.fromOffset(30, 20), Position = UDim2.new(1, -34, 0.5, -10), Text = ">", TextSize = 18, Font = Enum.Font.GothamBold, TextColor3 = b10})
	local b = a2("TextButton", {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Text = "", ZIndex = 5}, f)
	b.MouseEnter:Connect(function() a1(f, 0.15, {BackgroundTransparency = 0.88}) end)
	b.MouseLeave:Connect(function() a1(f, 0.15, {BackgroundTransparency = 0.94}) end)
	b.MouseButton1Click:Connect(cb)
end

local b27 = a9("auth", "Authentication")
local _, b28, b29 = a10(b27, 46, 80, "Checking...", "Verifying your group membership.", b8)
local b30 = a10(b27, 134, 62, "Copy Access Link", "Copies the group URL to your clipboard")
local b31 = a10(b27, 204, 62, "Check Again", "Joined the group? Press here to verify")

local b32 = a9("help", "Instructions")
a10(b32, 46, 62, "1. Copy the link", "Press Copy Access Link on the Authentication tab.")
a10(b32, 116, 62, "2. Open your browser", "Paste the link into your browser's address bar.")
a10(b32, 186, 76, "3. Join and verify", "Join the group, rejoin the game if needed, then press Check Again.")

local b33 = a2("Frame", {Size = UDim2.fromOffset(280, 62), Position = UDim2.fromOffset(b12 - 300, b13 + 10), BackgroundColor3 = Color3.fromRGB(20, 17, 34), ZIndex = 8}, b17)
a3(b33, 10)
local b34 = a4(b33, b7, 1.2, 0.2)
local b35 = a5(b33, {Size = UDim2.fromOffset(240, 20), Position = UDim2.fromOffset(14, 9), TextSize = 14, Font = Enum.Font.GothamBold, TextXAlignment = b14, ZIndex = 9})
local b36 = a5(b33, {Size = UDim2.fromOffset(250, 26), Position = UDim2.fromOffset(14, 30), TextSize = 12, TextColor3 = b11, TextWrapped = true, TextXAlignment = b14, TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 9})
local b37 = 0
local function a12(title, body, col)
	b37 = b37 + 1 local id = b37
	b35.Text, b36.Text, b35.TextColor3, b34.Color = title, body, col, col
	a1(b33, 0.4, {Position = UDim2.fromOffset(b12 - 300, b13 - 78)}, Enum.EasingStyle.Back)
	task.delay(3, function() if id == b37 then a1(b33, 0.3, {Position = UDim2.fromOffset(b12 - 300, b13 + 10)}) end end)
end

local b38 = a2("TextButton", {Size = UDim2.fromOffset(150, 34), Position = UDim2.new(0.5, -75, 0, 14), BackgroundColor3 = Color3.fromRGB(14, 12, 28), Text = CONFIG.Name,
	TextSize = 13, Font = Enum.Font.GothamBold, TextColor3 = b8, AutoButtonColor = false, Visible = false}, b16)
a3(b38, 17)
a4(b38, b7, 1.5, 0.2)
local function a13(h) b17.Visible = not h b38.Visible = h end
b22.MouseButton1Click:Connect(function() a13(true) end)
b38.MouseButton1Click:Connect(function() a13(false) end)
local b39 = b3.InputBegan:Connect(function(i, gp)
	if not gp and i.KeyCode == Enum.KeyCode.RightShift then a13(b17.Visible) end
end)

local b40
local function a14()
	a1(b17, 0.35, {Size = UDim2.fromOffset(0, 0)}, Enum.EasingStyle.Back).Completed:Wait()
	b40:Disconnect() b39:Disconnect() b16:Destroy()
end
b23.MouseButton1Click:Connect(a14)

local function a15()
	local k1, k2 = pcall(function() return b1.LocalPlayer:GetRankInGroup(CONFIG.GroupId) end)
	return k1 and k2 >= CONFIG.MinRank
end
local b41 = false
local function a16()
	if b41 then return end b41 = true
	b28.Text, b28.TextColor3, b29.Text = "Checking...", b8, "Verifying your group membership."
	task.wait(0.7)
	if a15() then
		b28.Text, b28.TextColor3, b29.Text = "Access Granted", b9, "Welcome! Loading the script..."
		a12("Authentication", "You're in the group. Welcome!", b9)
		task.wait(1.3) a14() OnSuccess()
		return
	end
	b28.Text, b28.TextColor3 = "Access Locked", b7
	b29.Text = "This script hub requires you to join our group to access the rest of the script."
	a12(CONFIG.Name .. " Authentication", "Oops looks like you're not in the group", b7)
	b41 = false
end
a11(b30, function()
	local k1 = pcall(function() setclipboard(b15) end)
	a12("Authentication", k1 and "Group link copied to your clipboard" or ("Copy failed. Link: " .. b15), k1 and b8 or Color3.fromRGB(255, 190, 80))
end)
a11(b31, a16)

local b42 = os.clock()
b40 = b4.Heartbeat:Connect(function() b19.Rotation = ((os.clock() - b42) * 70) % 360 end)
do
	local b43, b44, b45
	b20.InputBegan:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then b43, b44, b45 = true, b17.Position, i.Position end
	end)
	b3.InputChanged:Connect(function(i)
		if b43 and (i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch) then
			local d = i.Position - b45
			b17.Position = UDim2.new(b44.X.Scale, b44.X.Offset + d.X, b44.Y.Scale, b44.Y.Offset + d.Y)
		end
	end)
	b3.InputEnded:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then b43 = false end
	end)
end

a7("auth")
print("[GroupGate] GUI created in: " .. b16:GetFullName())
a1(b17, 0.5, {Size = UDim2.fromOffset(b12, b13)}, Enum.EasingStyle.Back).Completed:Wait()
a16()

end)
print("[GroupGate] finished, ok = " .. tostring(qA))
if not qA then warn("[GroupGate] error: " .. tostring(qB)) end

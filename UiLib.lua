local Library = {}
--[[
- Created by James
]]

local players = game:GetService("Players")
local tweenService = game:GetService("TweenService")
local runService = game:GetService("RunService")
local coreGui = game:GetService("CoreGui")
local uis = game:GetService("UserInputService")

local lp = players.LocalPlayer
local mouse = lp:GetMouse()

local viewPort = workspace.CurrentCamera.ViewportSize

local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)

function Tween(object, goal)
	local tween = tweenService:Create(object, tweenInfo, goal)
	tween.Completed:Connect(
		function()
		end
	)
	tween:Play()
end

function Library:validate(defaults, options)
	local options = options or {}
	for i, v in pairs(defaults) do
		if options[i] == nil then
			options[i] = v
		end
	end
	return options
end

function Library:tween(object, goal, callback)
	local tween = tweenService:Create(object, tweenInfo, goal)
	tween.Completed:Connect(
		callback or function()
		end
	)
	tween:Play()
end

function Library:new(options)
	options =
		Library:validate(
			{
				name = "James's Login System",
				comment = "This is created by James",
				username = function()
				end,
				password = function()
				end
			},
			options or {}
		)

	local UpdatesMain = {}

	local LoginSystem = Instance.new("ScreenGui")
	local LoadCircle = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local LoginFrame = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local DropShadowHolder = Instance.new("Frame")
	local DropShadow = Instance.new("ImageLabel")
	local Container = Instance.new("Frame")
	local Login = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local Text = Instance.new("TextLabel")
	local password = Instance.new("TextBox")
	local username = Instance.new("TextBox")
	local TopBar = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")
	local Hide = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local Comment = Instance.new("TextLabel")
	local UIPadding = Instance.new("UIPadding")
	local Updates = Instance.new("Frame")
	local Container_2 = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")

	--Properties:

	LoginSystem.Name = options.name
	LoginSystem.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	LoginSystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	LoadCircle.Name = "LoadCircle"
	LoadCircle.Parent = LoginSystem
	LoadCircle.AnchorPoint = Vector2.new(0.5, 0.5)
	LoadCircle.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	LoadCircle.BorderSizePixel = 0
	LoadCircle.Position = UDim2.new(0.548215985, -50, 0.592936814, -50)
	LoadCircle.Size = UDim2.new(0.0, 0, 0.0, 0)

	UICorner.CornerRadius = UDim.new(0, 360)
	UICorner.Parent = LoadCircle

	LoginFrame.Name = "LoginFrame"
	LoginFrame.Parent = LoginSystem
	LoginFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	LoginFrame.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	LoginFrame.Position = UDim2.new(0.499517828, 0, 0.5, 0)
	LoginFrame.Size = UDim2.new(0, 242, 0, 265)
	LoginFrame.Visible = false

	UICorner_2.CornerRadius = UDim.new(0, 5)
	UICorner_2.Parent = LoginFrame

	DropShadowHolder.Name = "DropShadowHolder"
	DropShadowHolder.Parent = LoginFrame
	DropShadowHolder.BackgroundTransparency = 1.000
	DropShadowHolder.BorderSizePixel = 0
	DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
	DropShadowHolder.ZIndex = 0

	DropShadow.Name = "DropShadow"
	DropShadow.Parent = DropShadowHolder
	DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow.BackgroundTransparency = 1.000
	DropShadow.BorderSizePixel = 0
	DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow.Size = UDim2.new(1.22000003, 0, 1.19000006, 0)
	DropShadow.ZIndex = 0
	DropShadow.Image = "rbxassetid://6014261993"
	DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow.ImageTransparency = 0.800
	DropShadow.ScaleType = Enum.ScaleType.Slice
	DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

	Container.Name = "Container"
	Container.Parent = LoginFrame
	Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Container.BackgroundTransparency = 1.000
	Container.Size = UDim2.new(0, 242, 0, 265)

	Login.Name = "Login"
	Login.Parent = Container
	Login.AnchorPoint = Vector2.new(0.5, 0.5)
	Login.BackgroundColor3 = Color3.fromRGB(0, 152, 0)
	Login.BorderSizePixel = 0
	Login.Position = UDim2.new(0.502066135, 0, 0.656603754, 0)
	Login.Size = UDim2.new(0, 157, 0, 34)

	UICorner_3.CornerRadius = UDim.new(0, 5)
	UICorner_3.Parent = Login

	Text.Name = "Text"
	Text.Parent = Login
	Text.AnchorPoint = Vector2.new(0.5, 0.5)
	Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Text.BackgroundTransparency = 1.000
	Text.Position = UDim2.new(0.5, 0, 0.5, 0)
	Text.Size = UDim2.new(0, 157, 0, 34)
	Text.Font = Enum.Font.Unknown
	Text.Text = "Login"
	Text.TextColor3 = Color3.fromRGB(255, 255, 255)
	Text.TextSize = 14.000
	Text.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

	password.Name = "password"
	password.Parent = Container
	password.AnchorPoint = Vector2.new(0.5, 0.5)
	password.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	password.Position = UDim2.new(0.495867789, 0, 0.467924535, 0)
	password.Size = UDim2.new(0, 157, 0, 34)
	password.Font = Enum.Font.Unknown
	password.Text = ""
	password.PlaceholderText = "password"
	password.TextColor3 = Color3.fromRGB(0, 0, 0)
	password.TextSize = 12.000
	
	local UICorner_9 = Instance.new("UICorner")
	
	UICorner_9.CornerRadius = UDim.new(0, 3)
	UICorner_9.Parent = password

	username.Name = "username"
	username.Parent = Container
	username.AnchorPoint = Vector2.new(0.5, 0.5)
	username.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	username.Position = UDim2.new(0.495867789, 0, 0.301886797, 0)
	username.Size = UDim2.new(0, 157, 0, 34)
	username.Font = Enum.Font.Unknown
	username.Text = ""
	username.PlaceholderText = "username"
	username.TextColor3 = Color3.fromRGB(0, 0, 0)
	username.TextSize = 12.000
	
	local UICorner_10 = Instance.new("UICorner")
	
	UICorner_10.CornerRadius = UDim.new(0, 3)
	UICorner_10.Parent = username

	TopBar.Name = "TopBar"
	TopBar.Parent = LoginFrame
	TopBar.AnchorPoint = Vector2.new(0.5, 0.5)
	TopBar.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
	TopBar.Position = UDim2.new(0.5, 0, 0.0716981143, 0)
	TopBar.Size = UDim2.new(0, 242, 0, 39)

	UICorner_4.CornerRadius = UDim.new(0, 5)
	UICorner_4.Parent = TopBar

	Hide.Name = "Hide"
	Hide.Parent = TopBar
	Hide.AnchorPoint = Vector2.new(0.5, 0.5)
	Hide.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
	Hide.BorderSizePixel = 0
	Hide.Position = UDim2.new(0.5, 0, 0.852564096, 0)
	Hide.Size = UDim2.new(0, 242, 0, 11)

	TextLabel.Parent = TopBar
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.0909090936, 0, -0.025641026, 0)
	TextLabel.Size = UDim2.new(0, 200, 0, 39)
	TextLabel.Font = Enum.Font.Unknown
	TextLabel.Text = "SIGN IN"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 15.000

	Comment.Name = "Comment"
	Comment.Parent = LoginFrame
	Comment.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Comment.BackgroundTransparency = 1.000
	Comment.Position = UDim2.new(0, 0, 0.720754743, 0)
	Comment.Size = UDim2.new(0, 241, 0, 74)
	Comment.Font = Enum.Font.Unknown
	Comment.Text = options.comment
	Comment.TextColor3 = Color3.fromRGB(255, 255, 255)
	Comment.TextSize = 9.000
	Comment.TextWrapped = true
	Comment.TextYAlignment = Enum.TextYAlignment.Top

	UIPadding.Parent = Comment
	UIPadding.PaddingTop = UDim.new(0.100000001, 0)

	Updates.Name = "Updates"
	Updates.Parent = LoginSystem
	Updates.AnchorPoint = Vector2.new(0.5, 0.5)
	Updates.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	Updates.ClipsDescendants = true
	Updates.Position = UDim2.new(0.878119617, 0, 0.5, 0)
	Updates.Size = UDim2.new(0.0376085155, 276, 1.1, 0)
	Updates.Visible = false

	Container_2.Name = "Container"
	Container_2.Parent = Updates
	Container_2.Active = true
	Container_2.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	Container_2.BackgroundTransparency = 1.000
	Container_2.Size = UDim2.new(1, 0, 1, 0)
	Container_2.ScrollBarThickness = 0
	
	local UICorner_8 = Instance.new("UICorner")
	
	UICorner_8.CornerRadius = UDim.new(0, 5)
	UICorner_8.Parent = Container_2

	UIListLayout.Parent = Container_2
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0.0199999996, 0)

	local LoginBut = {
		Hover = false,
		MouseDown = false
	}
	
	function Library:Close()
	    Tween(LoginFrame, {Visible = false})
		Tween(Updates, {Visible = false})
		Tween(UICorner, {CornerRadius = UDim.new(0, 360)})
		Tween(LoadCircle, {Size = UDim2.new(0, 0, 0, 0)})
		task.wait(2)
		LoginSystem:Destroy()
	end

	function Library:GetUsername()
		return tostring(username.Text)
	end

	function Library:GetPassword()
		return tostring(password.Text)
	end

	function Library:SetU()
		options.username(Library:GetUsername())
	end

	function Library:SetP()
		options.password(Library:GetPassword())
	end

	Login.MouseEnter:Connect(
		function()
			LoginBut.Hover = true
			if not LoginBut.MouseDown then
				Tween(Login, {BackgroundColor3 = Color3.fromRGB(0, 68, 0)})
			end
		end
	)

	Login.MouseLeave:Connect(
		function()
			LoginBut.Hover = false

			if not LoginBut.MouseDown then
				Tween(Login, {BackgroundColor3 = Color3.fromRGB(0, 152, 0)})
			end
		end
	)

	uis.InputBegan:Connect(
		function(input, gpe)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				if LoginBut.Hover then
					LoginBut.MouseDown = true
					Tween(Login, {BackgroundColor3 = Color3.fromRGB(0, 255, 0)})
					Library:SetU()
					Library:SetP()
				end
			end
		end
	)

	uis.InputEnded:Connect(function(input, gpe)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				LoginBut.MouseDown = false
				if LoginBut.Hover == true then
					Tween(Login, {BackgroundColor3 = Color3.fromRGB(0, 152, 0)})
				end
			end
		end)

	function Library:UpdatesMain(options)
		options =
			Library:validate(
				{
					name = "AAAAAAAA",
					image = "rbxassetid://12405540485",
					update = "I dont know",
					comment = "Yes"
				},
				options or {}
			)

		local BaseFrame = Instance.new("Frame")
		local Image = Instance.new("ImageLabel")
		local DropShadowHolder_2 = Instance.new("Frame")
		local DropShadow_2 = Instance.new("ImageLabel")
		local UICorner_5 = Instance.new("UICorner")
		local UICorner_6 = Instance.new("UICorner")
		local UICorner_7 = Instance.new("UICorner")
		
		local Title = Instance.new("TextLabel")
		local Update = Instance.new("TextLabel")
		local UIPadding_2 = Instance.new("UIPadding")
		local UIPadding_3 = Instance.new("UIPadding")

		BaseFrame.Name = options.name
		BaseFrame.Parent = Container_2
		BaseFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		BaseFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		BaseFrame.Position = UDim2.new(0.0269841235, 0, 0.0204082001, 0)
		BaseFrame.Size = UDim2.new(0, 298, 0, 243)

		Image.Name = "Image"
		Image.Parent = BaseFrame
		Image.AnchorPoint = Vector2.new(0.5, 0.5)
		Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Image.Position = UDim2.new(0.496644288, 0, 0.33714211, 0)
		Image.Size = UDim2.new(0, 275, 0, 142)
		Image.Image = options.image

		UICorner_5.CornerRadius = UDim.new(0, 5)
		UICorner_5.Parent = Image

		UICorner_6.CornerRadius = UDim.new(0, 5)
		UICorner_6.Parent = BaseFrame

		DropShadowHolder_2.Name = "DropShadowHolder"
		DropShadowHolder_2.Parent = BaseFrame
		DropShadowHolder_2.BackgroundTransparency = 1.000
		DropShadowHolder_2.BorderSizePixel = 0
		DropShadowHolder_2.Size = UDim2.new(1, 0, 1, 0)
		DropShadowHolder_2.ZIndex = 0

		DropShadow_2.Name = "DropShadow"
		DropShadow_2.Parent = DropShadowHolder_2
		DropShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
		DropShadow_2.BackgroundTransparency = 1.000
		DropShadow_2.BorderSizePixel = 0
		DropShadow_2.Position = UDim2.new(0.5, 0, 0.5, 0)
		DropShadow_2.Size = UDim2.new(1, 47, 1, 47)
		DropShadow_2.ZIndex = 0
		DropShadow_2.Image = "rbxassetid://6014261993"
		DropShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
		DropShadow_2.ImageTransparency = 0.800
		DropShadow_2.ScaleType = Enum.ScaleType.Slice
		DropShadow_2.SliceCenter = Rect.new(49, 49, 450, 450)

		Title.Name = "Title"
		Title.Parent = BaseFrame
		Title.AnchorPoint = Vector2.new(0.5, 0.5)
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.BackgroundTransparency = 1.000
		Title.BorderColor3 = Color3.fromRGB(27, 42, 53)
		Title.Position = UDim2.new(0.49832195, 0, 0.679012358, 0)
		Title.Size = UDim2.new(0, 296, 0, 25)
		Title.Font = Enum.Font.Unknown
		Title.Text = options.update
		Title.TextColor3 = Color3.fromRGB(203, 203, 203)
		Title.TextSize = 12.000

		Update.Name = "Update"
		Update.Parent = BaseFrame
		Update.AnchorPoint = Vector2.new(0.5, 0.5)
		Update.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Update.BackgroundTransparency = 1.000
		Update.BorderColor3 = Color3.fromRGB(27, 42, 53)
		Update.Position = UDim2.new(0.494966239, 0, 0.865226328, 0)
		Update.Size = UDim2.new(0, 296, 0, 65)
		Update.Font = Enum.Font.Unknown
		Update.Text = options.comment
		Update.TextColor3 = Color3.fromRGB(203, 203, 203)
		Update.TextSize = 10.000
		Update.TextXAlignment = Enum.TextXAlignment.Left
		Update.TextYAlignment = Enum.TextYAlignment.Top

		UIPadding_2.Parent = Update
		UIPadding_2.PaddingLeft = UDim.new(0.0500000007, 0)
		UIPadding_2.PaddingTop = UDim.new(0.100000001, 0)

		UIPadding_3.Parent = Container_2
		UIPadding_3.PaddingTop = UDim.new(0.0199999996, 0)

		UICorner_7.CornerRadius = UDim.new(0, 4)
		UICorner_7.Parent = Updates
	end
	if not game:IsLoaded() then
		game.Loaded:Wait()
	end
	repeat
		task.wait()
	until game.Players
	repeat
		task.wait()
	until game.Players.LocalPlayer
	repeat
		task.wait()
	until game.ReplicatedStorage
	task.wait(0.5)
	Tween(LoadCircle, {Size = UDim2.new(0.100000001, 0, 0.193000004, 0)})
	Tween(LoadCircle, {Size = UDim2.new(0.200000001, 0, 0.293000004, 0)})
	Tween(LoadCircle, {Size = UDim2.new(0.400000001, 0, 0.493000004, 0)})
	Tween(LoadCircle, {Size = UDim2.new(0.800000001, 0, 0.893000004, 0)})
	Tween(LoadCircle, {Size = UDim2.new(0.1600000001, 0, 0.1693000004, 0)})
	Tween(UICorner, {CornerRadius = UDim.new(0, 0)})
	Tween(LoadCircle, {Size = UDim2.new(2, 0, 2, 0)})
	Tween(LoginFrame, {Visible = true})
	Tween(Updates, {Visible = true})
end

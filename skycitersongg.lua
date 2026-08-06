-- [[ skycitersongg - Premium Script Hub z Białą Listą ]] --
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- ===================================================
-- AKTYWNA BIAŁA LISTA (ZAKUPIONE LICENCJE / FREE)
-- ===================================================
local BialaLista = {
    ["Demon0x0x1"] = true,
    ["barltek8"] = true,
    ["Drugie9"] = true
}

-- Sprawdzanie licencji gracza i ceny 15 zł
if not BialaLista[LocalPlayer.Name] then
    pcall(function()
        game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
            Text = "[skycitersongg]: BRAK DOSTEPU! Ten skrypt kosztuje 15 ZL. Wejdz na nasz Discord, aby zakupic licencje: discord.gg/ugfJBg54n",
            Color = Color3.fromRGB(255, 50, 50),
            Font = Enum.Font.GothamBold
        })
        local ErrorGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
        local Lbl = Instance.new("TextLabel", ErrorGui)
        Lbl.Size = UDim2.new(1, 0, 0, 50)
        Lbl.Position = UDim2.new(0, 0, 0.4, 0)
        Lbl.BackgroundColor3 = Color3.fromRGB(20, 0, 0)
        Lbl.Text = "BRAK LICENCJI! Skrypt kosztuje 15 ZL. Szczegoly na czacie gry."
        Lbl.TextColor3 = Color3.fromRGB(255, 50, 50)
        Lbl.Font = Enum.Font.GothamBold
        Lbl.TextSize = 18
    end)
    return
end

local CG,TS,UIS,RS=game:GetService("CoreGui"),game:GetService("TweenService"),game:GetService("UserInputService"),game:GetService("RunService")
if CG:FindFirstChild("skycitersgg") then CG.skycitersgg:Destroy() end
if CG:FindFirstChild("SkyArrowsGui") then CG.SkyArrowsGui:Destroy() end
if CG:FindFirstChild("YksArrowsGui") then CG.YksArrowsGui:Destroy() end
if CG:FindFirstChild("SkyIntroGui") then CG.SkyIntroGui:Destroy() end
local TC=Color3.fromRGB(0,230,115)
local IG=Instance.new("ScreenGui",CG) IG.Name="SkyIntroGui"
local IF=Instance.new("Frame",IG) IF.Size=UDim2.new(1,0,1,0) IF.BackgroundColor3=Color3.fromRGB(5,10,5) IF.BackgroundTransparency=0.2
local GT=Instance.new("TextLabel",IF) GT.Size=UDim2.new(1,0,1,0) GT.BackgroundTransparency=1 GT.Text="GG" GT.TextColor3=TC GT.TextSize=80 GT.Font=Enum.Font.Code
local ga=true task.spawn(function() while ga do GT.Text=({"G#","G⚡","☣G","GG","G_G"})[math.random(1,5)] GT.TextColor3=math.random(1,2)==1 and TC or Color3.fromRGB(255,50,50) task.wait(0.05) end end)
task.wait(2) ga=false GT.Text="studio ggcitersony" GT.TextColor3=Color3.fromRGB(255,215,0) GT.TextSize=45 GT.Font=Enum.Font.GothamBold task.wait(1.5)
TS:Create(IF,TweenInfo.new(0.5),{BackgroundTransparency=1}):Play() TS:Create(GT,TweenInfo.new(0.5),{TextTransparency=1}):Play() task.delay(0.5,function() IG:Destroy() end)
local SG=Instance.new("ScreenGui",CG) SG.Name="skycitersgg" SG.ResetOnSpawn=false
local MF=Instance.new("Frame",SG) MF.Name="MainFrame" MF.Size=UDim2.new(0,550,0,380) MF.Position=UDim2.new(0.5,-275,0.5,-190) MF.BackgroundColor3=Color3.fromRGB(15,22,15) MF.BorderSizePixel=0
local US=Instance.new("UIStroke",MF) US.Color=TC US.Thickness=2
Instance.new("UICorner",MF).CornerRadius=UDim.new(0,8)
local H=Instance.new("Frame",MF) H.Name="Header" H.Size=UDim2.new(1,0,0,45) H.BackgroundColor3=Color3.fromRGB(10,15,10) Instance.new("UICorner",H).CornerRadius=UDim.new(0,8)
local TGG=Instance.new("TextLabel",H) TGG.Size=UDim2.new(1,0,1,0) TGG.BackgroundTransparency=1 TGG.Text="GG" TGG.TextColor3=Color3.fromRGB(255,215,0) TGG.TextSize=28 TGG.Font=Enum.Font.GothamBold TGG.TextAlignment=Enum.TextAlignment.Center
local ST=Instance.new("TextLabel",H) ST.Size=UDim2.new(0,120,0,20) ST.Position=UDim2.new(0.5,25,0.5,-2) ST.BackgroundTransparency=1 ST.Text="skyciters" ST.TextColor3=TC ST.TextSize=14 ST.Font=Enum.Font.GothamSemibold
local E2C={US,ST}
local SB=Instance.new("Frame",MF) SB.Name="Sidebar" SB.Size=UDim2.new(0,140,1,-45) SB.Position=UDim2.new(0,0,0,45) SB.BackgroundColor3=Color3.fromRGB(10,12,10)
Instance.new("UIListLayout",SB).Padding=UDim.new(0,4)
local CA=Instance.new("Frame",MF) CA.Name="ContentArea" CA.Size=UDim2.new(1,-150,1,-55) CA.Position=UDim2.new(0,145,0,50) CA.BackgroundTransparency=1
local tabs={"Main","Auto","Day Farm","Bring Stuff","Misc","Local Player","Theme","ggFVIPWLbey","script player v.i.p"}
local ab={}
for i,t in ipairs(tabs) do
    local pn=t:gsub("%s+",""):gsub("%.","").."Page" local Pg=Instance.new("ScrollingFrame",CA) Pg.Name=pn Pg.Size=UDim2.new(1,0,1,0) Pg.BackgroundTransparency=1 Pg.Visible=(i==1) Pg.CanvasSize=UDim2.new(0,0,0,1500) Pg.ScrollBarThickness=3 Instance.new("UIListLayout",Pg).Padding=UDim.new(0,6)
    local btn=Instance.new("TextButton",SB) btn.Size=UDim2.new(1,-10,0,26) btn.BackgroundColor3=(i==1) and Color3.fromRGB(20,30,20) or Color3.fromRGB(15,17,15) btn.Text=t btn.TextColor3=(i==1) and TC or Color3.fromRGB(140,150,140) btn.Font=Enum.Font.GothamSemibold btn.TextSize=11 Instance.new("UICorner",btn).CornerRadius=UDim.new(0,4)
    if i==1 then table.insert(E2C,btn) end table.insert(ab,{B=btn,Active=(i==1)})
    btn.MouseButton1Click:Connect(function()
        for _,p in pairs(CA:GetChildren()) do if p:IsA("ScrollingFrame") then p.Visible=false end end
        for _,a in pairs(ab) do a.Active=false a.B.BackgroundColor3=Color3.fromRGB(15,17,15) a.B.TextColor3=Color3.fromRGB(140,140,140) for k,e in ipairs(E2C) do if e==a.B then table.remove(E2C,k) end end end
        Pg.Visible=true btn.BackgroundColor3=Color3.fromRGB(20,30,20) btn.TextColor3=TC table.insert(E2C,btn) for _,a in pairs(ab) do if a.B==btn then a.Active=true end end
    end)
end
local function updateTheme(c) TC=c for _,e in pairs(E2C) do pcall(function() if e:IsA("UIStroke") then e.Color=c elseif e.Name=="SubTitle" or e:IsA("TextButton") then e.TextColor3=c end end) end end
local function CreateToggle(pg,txt,cb)
    local f=Instance.new("Frame",pg) f.Size=UDim2.new(1,-10,0,35) f.BackgroundColor3=Color3.fromRGB(20,25,20) Instance.new("UICorner",f).CornerRadius=UDim.new(0,6)
    local lbl=Instance.new("TextLabel",f) lbl.Size=UDim2.new(1,-60,1,0) lbl.Position=UDim2.new(0,10,0,0) lbl.BackgroundTransparency=1 lbl.Text=txt lbl.TextColor3=Color3.fromRGB(230,230,230) lbl.Font=Enum.Font.Gotham lbl.TextSize=12 lbl.TextXAlignment=Enum.TextXAlignment.Left
    local b=Instance.new("TextButton",f) b.Size=UDim2.new(0,40,0,20) b.Position=UDim2.new(1,-50,0.5,-10) b.BackgroundColor3=Color3.fromRGB(35,40,35) b.Text="" Instance.new("UICorner",b).CornerRadius=UDim.new(0,10)
    local ind=Instance.new("Frame",b) ind.Size=UDim2.new(0,14,0,14) ind.Position=UDim2.new(0,3,0.5,-7) ind.BackgroundColor3=Color3.fromRGB(140,140,140) Instance.new("UICorner",ind).CornerRadius=UDim.new(0,7)
    local en=false b.MouseButton1Click:Connect(function() en=not en local tp=en and UDim2.new(1,-17,0.5,-7) or UDim2.new(0,3,0.5,-7) local tc=en and TC or Color3.fromRGB(140,140,140) local bg=en and Color3.fromRGB(0,50,25) or Color3.fromRGB(35,40,35) TS:Create(ind,TweenInfo.new(0.2),{Position=tp,BackgroundColor3=tc}):Play() TS:Create(b,TweenInfo.new(0.2),{BackgroundColor3=bg}):Play() task.spawn(cb,en) end)
end
local function CreateButton(pg,txt,cb)
    local b=Instance.new("TextButton",pg) b.Size=UDim2.new(1,-10,0,32) b.BackgroundColor3=Color3.fromRGB(30,40,30) b.Text=txt b.TextColor3=Color3.fromRGB(230,230,230) b.Font=Enum.Font.GothamSemibold b.TextSize=12 Instance.new("UICorner",b).CornerRadius=UDim.new(0,6) b.MouseButton1Click:Connect(cb)
end
local function CreateSlider(pg,txt,min,max,def,cb)
    local f=Instance.new("Frame",pg) f.Size=UDim2.new(1,-10,0,40) f.BackgroundColor3=Color3.fromRGB(20,25,20) Instance.new("UICorner",f).CornerRadius=UDim.new(0,6)
    local lbl=Instance.new("TextLabel",f) lbl.Size=UDim2.new(0.4,0,1,0) lbl.Position=UDim2.new(0,10,0,0) lbl.BackgroundTransparency=1 lbl.Text=txt.." ["..def.."]" lbl.TextColor3=Color3.fromRGB(220,220,220) lbl.Font=Enum.Font.Gotham lbl.TextSize=11 lbl.TextXAlignment=Enum.TextXAlignment.Left
    local sl=Instance.new("TextButton",f) sl.Size=UDim2.new(0.5,0,0,6) sl.Position=UDim2.new(0.45,0,0.5,-3) sl.BackgroundColor3=Color3.fromRGB(50,55,50) sl.Text=""
    local fill=Instance.new("Frame",sl) fill.Size=UDim2.new((def-min)/(max-min),0,1,0) fill.BackgroundColor3=TC fill.BorderSizePixel=0
    local drag=false local function update(input) local pct=math.clamp((input.Position.X-sl.AbsolutePosition.X)/sl.AbsoluteSize.X,0,1) fill.Size=UDim2.new(pct,0,1,0) local val=math.floor(min+(max-min)*pct) lbl.Text=txt.." ["..val.."]" cb(val) end
    sl.InputBegan:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then drag=true update(i) end end)
    UIS.InputChanged:Connect(function(i) if drag and (i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch) then update(i) end end)
    UIS.InputEnded:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then drag=false end end)
end
local drag,dIn,dStart,sPos H.InputBegan:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 then drag=true dStart=i.Position sPos=MF.Position i.Changed:Connect(function() if i.UserInputState==Enum.UserInputState.End then drag=false end end) end end) H.InputChanged:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseMovement then dIn=i end end) UIS.InputChanged:Connect(function(i) if i==dIn and drag then local d=i.Position-dStart MF.Position=UDim2.new(sPos.X.Scale,sPos.X.Offset+d.X,sPos.Y.Scale,sPos.Y.Offset+d.Y) end end)

-- MAIN TAB
local Mp=CA.MainPage
CreateToggle(Mp,"Infinie Saplings",function(s) end)
CreateToggle(Mp,"Entity Godmode (Become Invincible)",function(s) end)
CreateSlider(Mp,"Hip Height Changer",0,100,20,function(v) if LP.Character and LP.Character:FindFirstChild("Humanoid") then LP.Character.Humanoid.HipHeight=v end end)
Używaj kodu z rozwagą.CreateToggle(Mp,"Kill Aura",function(s) _G.ka=s while _G.ka do pcall(function() local t=LP.Character:FindFirstChildOfClass("Tool") if t then for _,v in pairs(workspace:GetChildren()) do if v:FindFirstChild("Humanoid") and v.Name~=LP.Name and (v.Name:find("Cultist") or v.Name:find("Deer") or v.Name:find("Wolf") or v.Name:find("Ram")) then if (LP.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude<30 then t:Activate() task.wait(0.05) end end end end end) task.wait(0.1) end end)CreateToggle(Mp,"Ice Aura",function(s) end)CreateToggle(Mp,"Ore Aura",function(s) if s then game:GetService("StarterGui"):SetCore("SendNotification",{Title="Voidware",Text="Ore Aura Enabled! Make sure to equip a tool",Duration=4}) end end)CreateToggle(Mp,"Range Circle",function(s) end)

CreateToggle(Gp,"sky",function(s)
    if s then local ch=LP.Character if ch and ch:FindFirstChild("HumanoidRootPart") then local p=RaycastParams.new() p.FilterType=Enum.RaycastFilterType.Exclude p.FilterDescendantsInstances={ch} local r=workspace:Raycast(ch.HumanoidRootPart.Position,Vector3.new(0,-15,0),p) if r and r.Instance then cc=r.Instance originalCFrame=cc.CFrame local b=Instance.new("SelectionBox",CG) b.Adornee=cc b.Color3=TC b.LineThickness=0.04 table.insert(aVis,b) scrArrows(function() if cc and ch:FindFirstChild("HumanoidRootPart") then cc.CFrame=cc.CFrame*CFrame.new(0,4,0) ch.HumanoidRootPart.CFrame=ch.HumanoidRootPart.CFrame*CFrame.new(0,4,0) end end,function() if cc and ch:FindFirstChild("HumanoidRootPart") then cc.CFrame=cc.CFrame*CFrame.new(0,-4,0) ch.HumanoidRootPart.CFrame=ch.HumanoidRootPart.CFrame*CFrame.new(0,-4,0) end end) end end else if SGui then SGui:Destroy() SGui=nil end if cc and originalCFrame then cc.CFrame=originalCFrame end for _,v in pairs(aVis) do if v then v:Destroy() end end aVis={} cc,originalCFrame=nil,nil end
end)
CreateToggle(Gp,"yks",function(s)
    if s then local ch=LP.Character if ch and ch:FindFirstChild("HumanoidRootPart") then local p=RaycastParams.new() p.FilterType=Enum.RaycastFilterType.Exclude p.FilterDescendantsInstances={ch} local r=workspace:Raycast(ch.HumanoidRootPart.Position,Vector3.new(0,50,0),p) if r and r.Instance then cyc=r.Instance oYC=cyc.CFrame cyc.CFrame=CFrame.new(cyc.Position.X,ch.HumanoidRootPart.Position.Y-3.5,cyc.Position.Z) local b=Instance.new("SelectionBox",CG) b.Adornee=cyc b.Color3=TC b.LineThickness=0.04 table.insert(yVis,b) scrArrows(function() if cyc and ch:FindFirstChild("HumanoidRootPart") then cyc.CFrame=cyc.CFrame*CFrame.new(0,4,0) ch.HumanoidRootPart.CFrame=ch.HumanoidRootPart.CFrame*CFrame.new(0,4,0) end end,function() if cyc and ch:FindFirstChild("HumanoidRootPart") then cyc.CFrame=cyc.CFrame*CFrame.new(0,-4,0) ch.HumanoidRootPart.CFrame=ch.HumanoidRootPart.CFrame*CFrame.new(0,-4,0) end end) end end else if YGui then YGui:Destroy() YGui=nil end if cyc and oYC then cyc.CFrame=oYC end for _,v in pairs(yVis) do if v then v:Destroy() end end yVis={} cyc,oYC=nil,nil end
end)
local sCont=Instance.new("Frame",Gp) sCont.Size=UDim2.new(1,-10,0,40) sCont.BackgroundColor3=Color3.fromRGB(20,25,20) sCont.ClipsDescendants=true Instance.new("UICorner",sCont).CornerRadius=UDim.new(0,6)
local sMBtn=Instance.new("TextButton",sCont) sMBtn.Size=UDim2.new(1,0,0,40) sMBtn.BackgroundColor3=Color3.fromRGB(25,35,25) sMBtn.Text="▼ splin" sMBtn.TextColor3=TC sMBtn.Font=Enum.Font.GothamBold sMBtn.TextSize=14 Instance.new("UIListLayout",sCont).Padding=UDim.new(0,5)
local subF=Instance.new("Frame",sCont) subF.Size=UDim2.new(1,0,0,210) subF.BackgroundTransparency=1 Instance.new("UIListLayout",subF).Padding=UDim.new(0,5) local sOp=false
sMBtn.MouseButton1Click:Connect(function() sOp=not sOp local ts=sOp and UDim2.new(1,-10,0,260) or UDim2.new(1,-10,0,40) TS:Create(sCont,TweenInfo.new(0.3),{Size=ts}):Play() sMBtn.Text=sOp and "▲ splin" or "▼ splin" end)
local function CSub(txt,cb) local btn=Instance.new("TextButton",subF) btn.Size=UDim2.new(1,-20,0,30) btn.Position=UDim2.new(0,10,0,0) btn.BackgroundColor3=Color3.fromRGB(30,40,30) btn.Text=txt btn.TextColor3=Color3.fromRGB(230,230,230) btn.Font=Enum.Font.GothamSemibold btn.TextSize=11 Instance.new("UICorner",btn).CornerRadius=UDim.new(0,4) local en=false btn.MouseButton1Click:Connect(function() en=not en btn.BackgroundColor3=en and Color3.fromRGB(0,80,40) or Color3.fromRGB(30,40,30) btn.TextColor3=en and TC or Color3.fromRGB(230,230,230) task.spawn(cb,en) end) end
      local gL,iOrb=false,{} CSub("1. good (Orbit Campfire)",function(s) gL=s local camp=workspace:FindFirstChild("Campfire") or workspace:FindFirstChild("Ognisko") if not camp then return end if s then local a=0 iOrb={} while gL do pcall(function() a=a+0.05 for _,it in pairs(workspace:GetChildren()) do if it:IsA("Tool") and it:FindFirstChild("Handle") then if not table.find(iOrb,it.Handle) then table.insert(iOrb,it.Handle) end item.Handle.Anchored=true item.Handle.AssemblyLinearVelocity=Vector3.zero item.Handle.CFrame=CFrame.new(camp.Position+Vector3.new(math.cos(a)15,5,math.sin(a)15)) end end end) task.wait(0.02) end else for _,h in pairs(iOrb) do pcall(function() if h then h.Anchored=false h.AssemblyLinearVelocity=Vector3.new(0,-15,0) end end) end iOrb={} end end)local fontData={["G"]={{1,1,1,1,1},{1,0,0,0,0},{1,0,1,1,1},{1,0,0,0,1},{1,1,1,1,1}},["C"]={{1,1,1,1,1},{1,0,0,0,0},{1,0,0,0,0},{1,0,0,0,0},{1,1,1,1,1}},["I"]={{1,1,1,1,1},{0,0,1,0,0},{0,0,1,0,0},{0,0,1,0,0},{1,1,1,1,1}},["T"]={{1,1,1,1,1},{0,0,1,0,0},{0,0,1,0,0},{0,0,1,0,0},{0,0,1,0,0}},["E"]={{1,1,1,1,1},{1,0,0,0,0},{1,1,1,1,0},{1,0,0,0,0},{1,1,1,1,1}},["R"]={{1,1,1,1,0},{1,0,0,0,1},{1,1,1,1,0},{1,0,0,1,0},{1,0,0,0,1}},["S"]={{1,1,1,1,1},{1,0,0,0,0},{1,1,1,1,1},{0,0,0,0,1},{1,1,1,1,1}},["O"]={{1,1,1,1,1},{1,0,0,0,1},{1,0,0,0,1},{1,0,0,0,1},{1,1,1,1,1}},["N"]={{1,0,0,0,1},{1,1,0,0,1},{1,0,1,0,1},{1,0,0,1,1},{1,0,0,0,1}}}local sPl={} local function genText(txt,cf) for _,p in pairs(sPl) do pcall(function() p:Destroy() end) end sPl={} local xo=0 for ch in string.gmatch(txt:upper(),".") do local m=fontData[ch] if m then for r=1,5 do for c=1,5 do if m[r][c]==1 then local plant=Instance.new("Part",workspace) plant.Size=Vector3.new(2,2,2) plant.Material=Enum.Material.Grass plant.Color=Color3.fromRGB(0,200,0) plant.Anchored=true plant.CanCollide=false plant.CFrame=cfCFrame.new(xo+(c2),(5-r)2,0) table.insert(sPl,plant) end end end xo=xo+14 else xo=xo+8 end end endCreateSubButton("2. spoln (Sadzonki GG)", function(state) if state then local hrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") if hrp then genText("GG", hrp.CFrame * CFrame.new(-10, 25, -20)) end else for _, p in pairs(sPl) do pcall(function() p:Destroy() end) end sPl = {} end end)local tIn=Instance.new("Frame",subF) tIn.Size=UDim2.new(1,-20,0,35) tIn.Position=UDim2.new(0,10,0,0) tIn.BackgroundTransparency=1local cBoxCustom=Instance.new("TextBox",tIn) cBoxCustom.Size=UDim2.new(0.65,0,1,0) cBoxCustom.BackgroundColor3=Color3.fromRGB(15,20,15) cBoxCustom.Text="Wpisz tekst..." cBoxCustom.TextColor3=Color3.fromRGB(200,200,200) cBoxCustom.Font=Enum.Font.Gotham cBoxCustom.TextSize=12 Instance.new("UICorner",cBoxCustom).CornerRadius=UDim.new(0,4)cBoxCustom:GetPropertyChangedSignal("Text"):Connect(function() if #cBoxCustom.Text>200 then cBoxCustom.Text=cBoxCustom.Text:sub(1,200) end end)local go=Instance.new("TextButton",tIn) go.Size=UDim2.new(0.3,0,1,0) go.Position=UDim2.new(0.7,0,0,0) go.BackgroundColor3=Color3.fromRGB(0,100,50) go.Text="GO" go.TextColor3=TC go.Font=Enum.Font.GothamBold go.TextSize=12 Instance.new("UICorner",go).CornerRadius=UDim.new(0,4)go.MouseButton1Click:Connect(function() local text=cBoxCustom.Text local hrp=LP.Character and LP.Character:FindFirstChild("HumanoidRootPart") if hrp and text~="" and text~="Wpisz tekst..." then genText(text,hrp.CFrameCFrame.new(-20,30,-30)) end end)local pParts,pAct={},false local function clPl() for _,p in pairs(pParts) do pcall(function() p:Destroy() end) end pParts={} endCreateToggle(Gp,"wood",function(s) pAct=s if s then local hrp=LP.Character and LP.Character:FindFirstChild("HumanoidRootPart") if not hrp then return end task.spawn(function() while pAct do clPl() local cen=hrp.Position+Vector3.new(0,40,0) for x=-12,12,3 do for y=-12,12,3 do for z=-12,12,3 do if (xx+yy+zz) <= 144 then local p=Instance.new("Part",workspace) p.Size=Vector3.new(3,3,3) p.Material=Enum.Material.Wood p.Color=Color3.fromRGB(133,94,66) p.Anchored=true p.CFrame=CFrame.new(cen+Vector3.new(x,y,z)) table.insert(pParts,p) end end end end local e=0 while e<900 and pAct do task.wait(1) e=e+1 end if not pAct then break end clPl() genText("citerson",hrp.CFrameCFrame.new(-30,40,-10)) pParts=sPl sPl={} local et=0 while et<60 and pAct do task.wait(1) et=et+1 end if not pAct then break end clPl() end end) else for _,p in pairs(pParts) do pcall(function() p.Anchored=false p.CanCollide=true p.AssemblyLinearVelocity=Vector3.new(0,-25,0) end) end pParts={} pAct=false end end)local aL=false CreateToggle(Gp,"afk player",function(s) aL=s if s then task.spawn(function() while aL do pcall(function() local h=LP.Character and LP.Character:FindFirstChild("Humanoid") if h then h.Jump=true end end) task.wait(5) end end) end end)-- SCRIPT PLAYER VIP TABlocal vp=CA.scriptplayervipPagelocal cLbl=Instance.new("TextLabel",vp) cLbl.Size=UDim2.new(1,-10,0,20) cLbl.BackgroundTransparency=1 cLbl.Text="👑 TWÓRCY:" cLbl.TextColor3=Color3.fromRGB(255,215,0) cLbl.Font=Enum.Font.GothamBold cLbl.TextSize=11 cLbl.TextXAlignment=Enum.TextXAlignment.Leftlocal aInf=Instance.new("TextLabel",vp) aInf.Size=UDim2.new(1,-10,0,105) aInf.BackgroundTransparency=1 aInf.Text="• citerson  • barltek8  • beta2notgo\n• hackigoto  • polskagora  • haclersin23\n• banbanibey329  • 2937ded67\n• voidgoodbi" aInf.TextColor3=Color3.fromRGB(230,230,230) aInf.Font=Enum.Font.GothamSemibold aInf.TextSize=10 aInf.TextXAlignment=Enum.TextXAlignment.Leftlocal tLbl=Instance.new("TextLabel",vp) tLbl.Size=UDim2.new(1,-10,0,20) tLbl.BackgroundTransparency=1 tLbl.Text="🔍 TESTERZY:" tLbl.TextColor3=Color3.fromRGB(0,230,115) tLbl.Font=Enum.Font.GothamBold tLbl.TextSize=11 tLbl.TextXAlignment=Enum.TextXAlignment.Leftlocal tInf=Instance.new("TextLabel",vp) tInf.Size=UDim2.new(1,-10,0,50) tInf.BackgroundTransparency=1 tInf.Text="• hackerson  • plisgod4567\n• devbidmod  • holsbayglicz\n• citerek23267  • robloxLhacW67" tInf.TextColor3=Color3.fromRGB(210,210,210) tInf.Font=Enum.Font.GothamSemibold tInf.TextSize=10 tInf.TextXAlignment=Enum.TextXAlignment.Leftlocal mLbl=Instance.new("TextLabel",vp) mLbl.Size=UDim2.new(1,-10,0,20) mLbl.BackgroundTransparency=1 mLbl.Text="🛡 MODERATORZY:" mLbl.TextColor3=Color3.fromRGB(255,50,50) mLbl.Font=Enum.Font.GothamBold mLbl.TextSize=11 mLbl.TextXAlignment=Enum.TextXAlignment.Leftlocal mInf=Instance.new("TextLabel",vp) mInf.Size=UDim2.new(1,-10,0,50) mInf.BackgroundTransparency=1 mInf.Text="• citerson  • hackerson  • 67kindboy67\n• ktotamidzie567  • Holandiaplisas67" mInf.TextColor3=Color3.fromRGB(210,210,210) mInf.Font=Enum.Font.GothamSemibold mInf.TextSize=10 mInf.TextXAlignment=Enum.TextXAlignment.Leftlocal dBtn=Instance.new("TextButton",vp) dBtn.Size=UDim2.new(1,-10,0,35) dBtn.BackgroundColor3=Color3.fromRGB(88,101,242) dBtn.Text="🔗 DOŁĄCZ DO DISCORDA PO AKTYWACJĘ" dBtn.TextColor3=Color3.fromRGB(255,255,255) dBtn.Font=Enum.Font.GothamBold dBtn.TextSize=10 Instance.new("UICorner",dBtn).CornerRadius=UDim.new(0,6)dBtn.MouseButton1Click:Connect(function() local link="discord.gg" pcall(function() if setclipboard then setclipboard(link) elseif toclipboard then toclipboard(link) end end) pcall(function() game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{Text="[skycitersongg]: Wszyscy dziekujemy za korzystanie z naszego panelu polecam dolonczyc na naszego diskorda po aktywacje skryptu skycitersongg! Link skopiowany.",Color=Color3.fromRGB(0,230,115),Font=Enum.Font.GothamBold}) end) dBtn.Text="✔ SKOPIOWANO LINK!" dBtn.BackgroundColor3=Color3.fromRGB(0,180,90) task.wait(2) dBtn.Text="🔗 DOŁĄCZ DO DISCORDA PO AKTYWACJĘ" dBtn.BackgroundColor3=Color3.fromRGB(88,101,242) end)print("skycitersongg 1.0v master compilation complete!")

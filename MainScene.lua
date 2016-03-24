
local MainScene = class("MainScene", function()
    return display.newScene("MainScene")
end)

function MainScene:ctor()
	--1.加载精灵帧
	display.addSpriteFrames("coins.plist", "coins.png")

	--2.背景图片
	display.newSprite("StartBG.png")
		:pos(display.cx, display.cy)
		:addTo(self)

	--3.开始按钮
	local startBtnImages = {
		normal =  "#StartBtn_N.png",
		pressed = "#StartBtn_P.png",
	}
	
    cc.ui.UIPushButton.new(startBtnImages, {scale9 = false})
    	:onButtonClicked(function(event)
    		local playScene = import("app.scenes.PlayScene"):new()
    		display.replaceScene(playScene,"turnOffTiles",0.5)
    		end)
        :align(display.CENTER, display.cx, display.cy - 100)
        :addTo(self)
end

function MainScene:onEnter()
end

function MainScene:onExit()
end

return MainScene

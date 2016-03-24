
local PlayScene = class("PlayScene", function()
    return display.newScene("PlayScene")
end)

function PlayScene:ctor()

	--值的初始化
	self.curScore = 0
	self.highestScore = 1000

	self:initUI()
end
function PlayScene:initUI()
	-- 加载背景图片
	display.newSprite("playBG.png")
		:pos(display.cx, display.cy)
		:addTo(self)

	local curScore = display.newSprite("#score.png")
		:pos(display.left + 100, display.top - 80)
		:addTo(self)

	local highestScore = display.newSprite("#record.png")
		:pos(display.left + 500, display.top - 80)
		:addTo(self)

	cc.ui.UIPushButton.new("#setting.png", {scale9 = false})
		:onButtonClicked( function(event)
				print("TODO:给老子暂停！")
				end)	
		:align(display.CENTER, display.left + 950, display.top - 80)
		:addTo(self)
end


function PlayScene:onEnter()
end

function PlayScene:onExit()
end

return PlayScene

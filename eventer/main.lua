
--[[

	Eventer Example

]]

--------------------------------------------------------------------------------------

-- Create eventer object
local eventer = require("Eventer"):new()

-- Add runtime's touch event listener
-- Origin Code: Runtime:addEventListener(eventName, function)
-- Eventer Code: Eventer:add(eventName, function [,tag])
eventer:add(Runtime, "touch", function(e)
	print("Touch Event: " .. e.phase .. " (" .. e.x .. ", " .. e.y .. ")")
end)

--------------------------------------------------------------------------------------

-- Better situation 1
-- In composer's scene hide event. You have to remove touch event.

-- Origin: You have to define touch event's listener function.
local function originTouchEventProcess()
	-- define event listener function
	local function touchEvent(e)
		print("Touch Event: " .. e.phase .. " (" .. e.x .. ", " .. e.y .. ")")
	end

	-- add event listener
	Runtime:addEventListener( "touch", touchEvent)

	-- remove event listener
	Runtime:removeEventListener( "touch", touchEvent )
end

-- Eventer: You can remove event listner by just using tag.
local function eventerTouchEventProcess()
	-- add event listener with anonymous function
	eventer:add(Runtime, "touch", function(e)
		print("Touch Event: " .. e.phase .. " (" .. e.x .. ", " .. e.y .. ")")
	end)

	-- remove event listener
	eventer:remove("touch")
end


--[[

	Timer Example

]]

-- create timer object
local timer = require("Timer"):new()
local counter = 0

-- add timer
print("add timer")
timer:add(1000, function(e)
	-- time counting
	counter = counter + 1
	print("timer " .. counter)

	if counter == 5 then
		-- pause timer
		print("pause timer")
		timer:pause("timer1")

		-- resume timer in 1 second
		timer:add(1000, function()
			print("resume timer")
			timer:resume("timer1")
		end)

	elseif counter == 10 then
		-- cancel timer
		print("cancel timer")
		timer:cancel("timer1")

	end

end, 0, "timer1") -- infinite loop / tag = timer1
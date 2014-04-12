
module(..., package.seeall)

Timer = {}
Timer.__index = Timer

function Timer:new()
    local data = {}
    setmetatable(data, Timer)
    data.timers = {}

    return data
end

function Timer:add(delay, listener, iterations, tag)
    local t = timer.performWithDelay( delay, listener, iterations or 1 )
    t.tag = tag or ""
    table.insert(self.timers, t)
end

function Timer:pause(tag)
    for i, v in pairs(self.timers) do
        if v.tag == tag then
            timer.pause(v)
            break
        end
    end
end

function Timer:resume(tag)
    for i, v in pairs(self.timers) do
        if v.tag == tag then
            timer.resume(v)
            break
        end
    end
end

function Timer:cancel(tag)
    for i, v in pairs(self.timers) do
        if v.tag == tag then
            timer.cancel(v)
            table.remove(self.timers, i)
            break
        end
    end
end

function Timer:clear()   
    for i, v in pairs(self.timers) do
        timer.cancel(v)
    end 
    self.timers = nil
    self.timers = {}
end

return Timer
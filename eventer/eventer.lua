
module(..., package.seeall)

Eventer = {}
Eventer.__index = Eventer

function Eventer:new()
    local data = {}
    setmetatable(data, Eventer)
    data.events = {}

    return data
end

function Eventer:add(o, name, func, tag)
    local event = {}
    event.o, event.name, event.func = o, name, func
    event.tag = tag or name
    o:addEventListener(name, func)
    table.insert(self.events, event)
end

function Eventer:remove(tag)
    for i, v in pairs(self.events) do
        if v.tag == tag then
            v.o:removeEventListener(v.name, v.func)
            table.remove(self.events, v)
            break
        end
    end
end

function Eventer:clear()   
    for i, v in pairs(self.events) do
        v.o:removeEventListener(v.name, v.func)
    end 
    self.events = nil
    self.events = {}
end

return Eventer
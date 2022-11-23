json = require("dkjson")
atlas = require("atlas")

local a = atlas[0]
local p = {}
for k,v in pairs(a) do
    --system.print(atlas[0][k].name[1])
    local n = {}
    n["center"] = v.center
    n["radius"] = v.radius
    p[v.name[1]] = n
end

local j = json.encode(p)
system.print(j)



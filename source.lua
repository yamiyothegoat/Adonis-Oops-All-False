local a
for b, c in pairs(getgc(true)) do
    if typeof(c) ~= "table" then continue end

    local d = rawget(c, "indexInstance")
    if d and typeof(d) == "table" then
        local e = d[1] or ""
        if e == "kick" then
            a = c
            break
        end
    end
end
for f, g in pairs(a) do
    g[2] = function()return false end
end
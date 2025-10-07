-- Small utility module
local utils = {}

function utils.clamp(x, lo, hi)
    if x < lo then return lo end
    if x > hi then return hi end
    return x
end

return utils

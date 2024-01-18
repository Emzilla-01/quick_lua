--
-- Complete the 'sockMerchant' function below.
--
-- The function is expected to return an INTEGER.
-- The function accepts following parameters:
--  1. INTEGER n
--  2. INTEGER_ARRAY ar
--

-- function setDefault (t, d)
--     -- https://www.lua.org/pil/13.4.3.html
--       local mt = {__index = function () return d end}
--       setmetatable(t, mt)
--     end

function sockMerchant(n, ar)
    -- Write your code here
    -- count socks
    d={}
    
    for k,v in pairs(ar) do
        if d[v] == nil then
            d[v] = 0
        end
            
        d[v] = d[v]+1
        end
    
    -- count pairs
    pairs_=0
    for k,v in pairs(d) do
        print("k:", k, " - v:",v)
        p = v//2
        print(k , "type socks got ", p, "pairs...")
        pairs_ = pairs_+ p
        end
    return pairs_    
    end

local fptr = io.open(os.getenv("OUTPUT_PATH"), "w")

local n = io.stdin:read("*n", "*l")

local ar = {}

for token in string.gmatch(io.stdin:read("*l"):gsub("%s+$", ""), "[^%s]+") do
    table.insert(ar, tonumber(token))
end

local result = sockMerchant(n, ar)

fptr:write(result, "\n")

fptr:close()

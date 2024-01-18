--
-- Complete the 'jumpingOnClouds' function below.
--
-- The function is expected to return an INTEGER.
-- The function accepts INTEGER_ARRAY c as parameter.
--

function jumpingOnClouds(c)
    -- Write your code here
    i=1
    step_counter=0
    pth={}
    while i <= #c do
        this_step = 1
        -- print("i:",i)
        print("i:",i, "next clouds: ", c[i+1], ",",c[i+2])
        
        if c[i+2]==nil then
            if c[i+1]==0 then
            step_counter = step_counter + 1
            pth[i]=1
            print("break!")
            break
            elseif c[i+1]==nil then break
           end
        elseif (c[i+2]==nil and c[i+1]==nil) then
            print("nil nil!")        
        
        elseif c[i+2]==0 then
            this_step = 2
            pth[i]=2
            print("safe - jump 2")
        else
            pth[i]=1        
            print("not safe - jump 1")
        end
        i= i + this_step
        step_counter = step_counter + 1
    end
    
        print("step_counter:",step_counter)
    return step_counter
end

local fptr = io.open(os.getenv("OUTPUT_PATH"), "w")

local n = io.stdin:read("*n", "*l")

local c = {}

for token in string.gmatch(io.stdin:read("*l"):gsub("%s+$", ""), "[^%s]+") do
    table.insert(c, tonumber(token))
end

local result = jumpingOnClouds(c)

fptr:write(result, "\n")

fptr:close()

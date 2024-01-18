--
-- Complete the 'countingValleys' function below.
--
-- The function is expected to return an INTEGER.
-- The function accepts following parameters:
--  1. INTEGER steps
--  2. STRING path
--

up_down_dict= {U=1, D=-1}

function countingValleys(steps, path)
    -- Write your code here
    prev_height = 0
    valley_count = 0
    for i = 1, string.len(path) do
        
        step=up_down_dict[string.sub(path, i, i)]
        -- print(step)
        curr_height = prev_height + step
        if curr_height == 0 then            
            if prev_height < 0 then
            valley_count = valley_count + 1
            end
        end 
        prev_height = curr_height
    end
    
    return valley_count
end

local fptr = io.open(os.getenv("OUTPUT_PATH"), "w")

local steps = io.stdin:read("*n", "*l")

local path = io.stdin:read("*l")

local result = countingValleys(steps, path)

fptr:write(result, "\n")

fptr:close()

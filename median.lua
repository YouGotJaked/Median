-- open file
local file = io.open("nums.txt","r")
if file == nil then
    io.flush()
    print("File cannot be opened.")
    return
end

-- read through file and add numbers to array
local arr = {}
for line in file:lines() do
    table.insert(arr,tonumber(line))
end

-- return if array is empty
if next(arr) == nil then
    print ("The array is empty.")
    return
end

-- sort array
table.sort(arr)

-- check if array size is even or odd
local median
if math.fmod(#arr,2) == 0 then
    -- return mean of two middle elements
    median = (arr[#arr / 2] + arr[(#arr / 2) + 1]) / 2
else
    -- return middle element
    median = arr[math.ceil(#arr / 2)]
end

print("The median is ",median)

-- Function to check if a color is dark
function is_dark_color(color, threshold)
    -- Remove the '#' symbol if it's present
    color = color:gsub("#", "")

    -- Convert the hexadecimal color to RGB values
    local red = tonumber(color:sub(1, 2), 16)
    local green = tonumber(color:sub(3, 4), 16)
    local blue = tonumber(color:sub(5, 6), 16)

    -- Calculate the average of RGB values
    local average = (red + green + blue) / 3

    if average < threshold then
        return "The color is dark."
    else
        return "The color is not dark."
    end
end

-- Example usage:
local color = "#1E3246" -- Replace with your hex color (with or without the '#' symbol)
local threshold = 128   -- Set the threshold (you can adjust this)

print(is_dark_color(color, threshold))

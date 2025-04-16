-- Cabin Crew Simulator Script
local CabinCrewSimulator = {}

-- Function to close/open bins
function CabinCrewSimulator:toggle_bins(action)
    if action == "open" then
        print("Opening bins...")
        -- Add the actual code to open bins in the simulator
    elseif action == "close" then
        print("Closing bins...")
        -- Add the actual code to close bins in the simulator
    else
        print("Invalid action for bins. Use 'open' or 'close'.")
    end
end

-- Function to feed all passengers
function CabinCrewSimulator:feed_all()
    print("Feeding all passengers...")
    -- Add the code to simulate feeding all passengers
end

-- Function to trash all trash
function CabinCrewSimulator:trash_all()
    print("Trashing all trash...")
    -- Add the code to simulate trashing all trash
end

-- Function to fix all issues
function CabinCrewSimulator:fix_all()
    print("Fixing all issues...")
    -- Add the code to simulate fixing all issues
end

-- Function to claim codes
function CabinCrewSimulator:claim_codes(code_list)
    for _, code in ipairs(code_list) do
        print("Claiming code: " .. code)
        -- Add the code to simulate claiming the code
    end
end

-- Main function to execute actions
function CabinCrewSimulator:execute(action)
    if action == "close bins" or action == "open bins" then
        local bin_action = action:split(" ")[1]  -- 'close' or 'open'
        self:toggle_bins(bin_action)
    elseif action == "feed all" then
        self:feed_all()
    elseif action == "trash all" then
        self:trash_all()
    elseif action == "fix all" then
        self:fix_all()
    elseif action == "claim codes" then
        local codes = {"CODE1", "CODE2", "CODE3"} -- Example code list
        self:claim_codes(codes)
    else
        print("Invalid action. Please choose a valid action.")
    end
end

-- Call the main function to execute a sample action
CabinCrewSimulator:execute("feed all")  -- Replace with your desired action

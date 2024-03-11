-- Wait for 3 seconds before starting execution
wait(3)
-- Get a reference to the DataStoreService
local DSS = game:GetService("DataStoreService")
-- Retrieve a list of all available DataStores asynchronously
local DataStorePages = DSS:ListDataStoresAsync()
-- Continuously loop through each page of DataStores
while true do
    -- Get the current page of DataStores
	local CurrentStoresPage = DataStorePages:GetCurrentPage()
	-- Iterate through each DataStore in the current page
	for i, DataStoreInfo in pairs(CurrentStoresPage) do
		-- Get a reference to the current DataStore
		local DataStore = DSS:GetDataStore(DataStoreInfo.DataStoreName)
		-- Retrieve a list of keys in the current DataStore asynchronously
		local KeysPages = DataStore:ListKeysAsync()
		-- Continuously loop through each page of keys in the DataStore
		while true do
			-- Get the current page of keys
			local CurrentKeysPage = KeysPages:GetCurrentPage()
			-- Iterate through each key in the current page
			for j, Key in pairs(CurrentKeysPage) do
				-- Retrieve the value associated with the current key
				local KeyStore = DataStore:GetAsync(Key.KeyName)
				-- Print a message indicating that the key is being deleted
				print("Deleting: " .. Key.KeyName)
				-- Remove the key from the DataStore
				DataStore:RemoveAsync(Key.KeyName)
			end
			-- Exit the inner loop if all keys have been processed
			if KeysPages.IsFinished then
				break
			end
			-- Move to the next page of keys asynchronously
			KeysPages:AdvanceToNextPageAsync()
		end
	end
	-- Exit the outer loop if all DataStores have been processed
	if DataStorePages.IsFinished then
		break
	end
	-- Move to the next page of DataStores asynchronously
	DataStorePages:AdvanceToNextPageAsync()
	-- Wait for a short period before continuing the loop
	task.wait()
end
-- Print a message indicating that data deletion is complete
print("Done deleting data")
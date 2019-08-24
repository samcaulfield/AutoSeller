local frame = CreateFrame("Frame")
frame:RegisterEvent("MERCHANT_SHOW")
frame:SetScript("OnEvent",
    function(self, event, ...)
        for bag = 0, NUM_BAG_SLOTS do
            for slot = 1, GetContainerNumSlots(bag) do
                local texture, count, locked, quality = GetContainerItemInfo(bag, slot)
                if locked ~= 1 and quality == 0 then
                    UseContainerItem(bag, slot)
                end
            end
        end
    end)


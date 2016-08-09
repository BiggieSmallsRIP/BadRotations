if select(3, UnitClass("player")) == 11 then
    function DruidGuardian()
        if bb.player == nil or bb.player.profile ~= "Guardian" then
            bb.player = cGuardian:new("Guardian")
            setmetatable(bb.player, {__index = cGuardian})

            bb.player:createOptions()
            bb.player:createToggles()
            bb.player:update()
        end

        bb.player:update()
    end
end
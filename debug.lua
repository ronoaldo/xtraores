local lastupdate = 0
minetest.register_globalstep(function(dtime)
    lastupdate = lastupdate + dtime
    if lastupdate > 3.0 then
        minetest.log("action", string.format("Updating texture (dtime=%.02f, lastupdate=%.02f)", dtime, lastupdate))
        lastupdate = 0

        local to_send = {
            { --
                filepath = xtraores.path .. "/textures/xtraores_nickel_ore.png"
            }
        }
        for _, media in ipairs(to_send) do
            minetest.dynamic_add_media(media, function()
                minetest.log("action", "Media sent")
            end)
        end
    end
end)

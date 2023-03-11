local eid = GetUpdatedEntityID()
local pcomp = EntityGetFirstComponentIncludingDisabled(eid, "ProjectileComponent")
local shooter = ComponentGetValue2(pcomp, "mWhoShot") or nil
if shooter ~= nil then
    local x, y = EntityGetTransform(shooter)
    local targets = EntityGetInRadiusWithTag(x, y, 256, "client") or {}
    local closest = {
        dist = math.huge,
        id = nil
    }
    for i=1, #targets do
        local target = targets[i]
        if not EntityHasTag(target, "player_unit") then
            local tx, ty = EntityGetTransform(target)
            local dist = (ty - x) ^ 2 + (tx - y) ^ 2
            if dist < closest.dist then
                closest.dist = dist
                closest.id = target
            end
        end
    end
    if closest.id ~= nil then
        local hcomps = EntityGetComponent(eid, "HomingComponent") or {}
        for i=1, #hcomps do
            ComponentSetValue2(hcomps[i], "predefined_target", closest.id)
        end
    end
end
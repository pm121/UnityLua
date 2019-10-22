local csengine = CS.UnityEngine

local function main()
    local prefab = csengine.Resources.Load("Prefabs/MainView")
    csengine.GameObject.Instantiate(prefab)
end

main()
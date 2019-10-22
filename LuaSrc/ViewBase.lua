local csengine = CS.UnityEngine

local ViewBase = class("ViewBase")

function ViewBase:ctor(...)
    --实例化界面
    self:createView()
    --界面元素绑定
    self:createViewBinding()

    if self.onCreate then
        self:onCreate(...)
    end
end

function ViewBase:createView()
    if not self.VIEW_UI_PREFAB_NAME then
        return
    end

    local prefab = csengine.Resources.Load(self.VIEW_UI_PREFAB_NAME)
    self.view = csengine.GameObject.Instantiate(prefab)
end

function ViewBase:createViewBinding()
    if not self.VIEW_UI_BINDING then
        return
    end

    local root = self.view
    for k,v in pairs(self.VIEW_UI_BINDING) do
        local relation = v.relation or k
        self[k] = root.transform:Find(relation).gameObject

        if v.clicked then
            local node = self[k]:GetComponent("UnityEngine.UI."..v.clicked.type)
            node.onClick:AddListener(self[v.clicked.func])
        end
    end
end

return ViewBase
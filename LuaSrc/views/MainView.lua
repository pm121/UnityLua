local MainView = class("MainView",require("LuaSrc.ViewBase"))
MainView.VIEW_UI_PREFAB_NAME = "Prefabs/UIPrefabs/MainView/MainView"
MainView.VIEW_UI_BINDING = {
    btnBag = {
        relation = "btnBag",
        clicked = {type = "Button",func = "btnBagClicked"}
    },
}

function MainView:onCreate()
    rawset(_G,self.__cname,self)

    -- self.view:AddComponent(typeof(CS.LuaViewBehaviour))
    self.view:AddComponent(typeof(CS.MainViewHotFix))
end

function MainView:btnBagClicked()
    require("LuaSrc.views.StartView").createView()
end

--cs调lua方法
function MainView.awake()
    print("cs调lua")
end

return MainView



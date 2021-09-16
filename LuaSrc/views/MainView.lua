local MainView = class("MainView",require("LuaSrc.ViewBase"))
MainView.VIEW_UI_PREFAB_NAME = "Prefabs/UIPrefabs/MainView/MainView"
MainView.VIEW_UI_BINDING = {
    txtTitle = {
        relation = "txtTitle",
    },

    btnShow = {
        relation = "btnShow",
        clicked = {type = "Button",func = "btnShowClicked"}
    },
}

function MainView:onCreate()
    rawset(_G,self.__cname,self)
    self.txtTitle:GetComponent("UnityEngine.UI.Text").text = "我是标题"
    -- self.txtTitle.SetActive(false)
    -- self.view:AddComponent(typeof(CS.LuaViewBehaviour))
    -- self.view:AddComponent(typeof(CS.MainViewHotFix))
end

function MainView:btnShowClicked()
    self.txtTitle:GetComponent("UnityEngine.UI.Text").text = "我是点击出来的标题"
end

--cs调lua方法
function MainView.awake()
    print("cs调lua")
end

return MainView



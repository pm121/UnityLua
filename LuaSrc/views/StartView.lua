local StartView = {}

function StartView.createView()
    print("打开StartView")
    rawset(_G,"StartView",StartView)

    CS.UIMgr.Instance:openView("Prefabs/UIPrefabs/StartView/StartView")
end

function StartView.awake(obj)
    local btnOpenObj = obj.transform:Find("btnOpen").gameObject
    -- btnOpenObj:SetActive(false)
    local btnOpen = btnOpenObj:GetComponent("UnityEngine.UI.Button")
    btnOpen.onClick:AddListener(StartView.btnOpenClicked)
end

function StartView.btnOpenClicked()
    print("点击打开按钮")
end

return StartView


local updateLayer = cc.Layer:create()

function updateLayer:setUpdateEndCallBack(callback)
  self.callback = callback
end



function updateLayer:checkVersion()
    self:getUpdateList()
end

function updateLayer:getUpdateList()
  self:updateStart()
end

function updateLayer:updateStart()
  self:updateEnd()
end

function updateLayer:updateEnd( ... )
  -- body
  if self.callback then
    self.callback
  end
end

function updateLayer:update( ... )
    self:checkVersion()
end
return updateLayer

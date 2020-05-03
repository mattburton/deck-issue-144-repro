local kong = kong

local ArrayConfigHandler = {}

ArrayConfigHandler.PRIORITY = 500
ArrayConfigHandler.VERSION = "1.0.0"

function ArrayConfigHandler:access(config)
  kong.log.inspect(config)
end

return ArrayConfigHandler

local lapis = require("lapis")
local app = lapis.Application()
app.__base = app
app.include = function (self, a)
  self.__class.include(self, a, nil, self)
end

app:enable "etlua"
app.layout = require "views.layout"

app:include("apps.pages")

return app

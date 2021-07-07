local lapis = require("lapis")
local app = lapis.Application()
local respond_to = require("lapis.application").respond_to

app.__base = app

app:match("index", "/", respond_to({
    GET = function (self)
        self.page_title = "index"
        return {render=true}
    end
}))

return app
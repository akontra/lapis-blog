local config = require("lapis.config")

config("development", {
  port = 9090,
  session_name = "webflow_session",
  secret = "my secret string",
  postgres = {
    host = "127.0.0.1:5433",
    user = "yugabyte",
    database = "webflow_demo"
  }
})

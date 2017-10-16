local helpers = require "spec.helpers"

describe("my plugin", function()

  local proxy_client
  local admin_client

  setup(function()
    assert(helpers.dao.apis:insert {
      name         = "ca-interceptor-login-api",
      hosts        = "10.1.114.196",
      upstream_url = "http://google.com"
    })

    -- start Kong with your testing Kong configuration (defined in "spec.helpers")
    assert(helpers.start_kong())

    admin_client = helpers.admin_client()
  end)

  teardown(function()
    if admin_client then
      admin_client:close()
    end

    helpers.stop_kong()
  end)

  before_each(function()
    proxy_client = helpers.proxy_client()
  end)

  after_each(function()
    if proxy_client then
      proxy_client:close()
    end
  end)

  describe("thing", function()
    it("should do thing", function()
      -- send requests through Kong
      local res = assert(proxy_client:send {
        method = "GET",
        path   = "/get",
        headers = {
          ["Host"] = "http://google.com"
        }
      })

      local body = assert.res_status(200, res)

      -- body is a string containing the response
    end)
  end)
end)
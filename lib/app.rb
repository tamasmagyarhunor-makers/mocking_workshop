require 'api'
class App
    def initialize(api)
        @api = api
    end

    def get_request_url
        'The request url is: ' + @api.get_request_url
    end
end
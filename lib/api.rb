class API
    def initialize
        @request_url = 'ERROR'
        @request_method = 'ERROR'
        @status_code = '400' 
    end

    def get_request_url
        @request_url
    end
end

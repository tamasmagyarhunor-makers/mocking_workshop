require 'app'

RSpec.describe App do
    context "testing API" do
        it "returns the API response request URL" do
            mock_api = double('API')
            app = App.new(mock_api)

            allow(mock_api).to receive(:get_request_url).and_return('www.google.com')

            expect(app.get_request_url).to eq('The request url is: www.google.com')
        end
    end
end
class ApiClient

  def initialize
    @client = AFMotion::Client.build('https://frozen-beach-75348.herokuapp.com') do
      header "Accept", "application/json"

      response_serializer :json
    end
  end

  def token(username, password, &block)
    @client.post("api/login", email: username, password: password) do |result|
      block.call(result.object)
    end
  end

end

module PaylineData
  class Config
    attr_accessor :api_key, :redirect_url

    def initialize(api_key, redirect_url)
      @api_key      = api_key
      @redirect_url = redirect_url
    end
  end
end

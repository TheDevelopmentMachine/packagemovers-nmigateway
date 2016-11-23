module PaylineData
  class Response < OpenStruct
    def initialize(response)
      @response = response
      kv_pairs  = response.body.split('&')
      kv_hash   = Hash[kv_pairs.map { |kv_pair| kv_pair.split('=') }]
      super(kv_hash)
    end
  end
end

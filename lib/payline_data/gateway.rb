module PaylineData
  class Gateway
    class << self
      attr_accessor :username, :password

      def add_customer(params)
        params   = credentials.merge(Customer.add(params))
        response = post(create_query(params))
      end

      def update_customer(params)
        params   = credentials.merge(Customer.update(params))
        response = post(create_query(params))
      end

      def delete_customer(params)
        params   = credentials.merge(Customer.delete(params))
        response = post(create_query(params))
      end

      def purchase(params)
        params   = credentials.merge(Transaction.sale(params))
        response = post(create_query(params))
      end

      private

      def credentials
        { username: username,
          password: password }
      end

      def create_query(params)
        params.map { |k, v| "#{k}=#{v}" }.join('&')
      end

      def post(data)
        uri           = URI('https://secure.paylinedatagateway.com')
        https         = Net::HTTP.new(uri.host, uri.port)
        https.use_ssl = true

        https.post('/api/transact.php', data)
      end
    end
  end
end

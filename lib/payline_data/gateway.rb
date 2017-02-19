module PaylineData
  class Gateway
    class << self
      PAYLINE_DATA_URI          = 'https://secure.nmi.com'.freeze
      PAYLINE_DATA_API_ENDPOINT = '/api/transact.php'.freeze

      attr_accessor :username, :password

      def add_customer(args)
        post(params(Customer.add(args)))
      end

      def update_customer(args)
        post(params(Customer.update(args)))
      end

      def delete_customer(args)
        post(params(Customer.delete(args)))
      end

      def purchase(args)
        post(params(Transaction.sale(args)))
      end

      def refund(args)
        post(params(Transaction.refund(args)))
      end

      private

      def params(args)
        create_url_query(credentials.merge(args))
      end

      def credentials
        { username: username,
          password: password }
      end

      def create_url_query(params)
        params.reject { |_k, v| v.blank? }
              .map { |k, v| "#{k}=#{v}" }
              .join('&')
      end

      def post(data)
        uri           = URI(PAYLINE_DATA_URI)
        https         = Net::HTTP.new(uri.host, uri.port)
        https.use_ssl = true
        response      = https.post(PAYLINE_DATA_API_ENDPOINT, data)

        Response.new(response)
      end
    end
  end
end

module PaylineData
  class Transaction
    # For a list of params to pass visit https://secure.paylinedatagateway.com/gw/merchants/resources/integration/integration_portal.php#transaction_variables
    class << self
      def sale(params)
        params.merge(type: 'sale')
      end

      def auth(params)
        params.merge(type: 'auth')
      end

      def credit(params)
        params.merge(type: 'credit')
      end

      def validate(params)
        params.merge(type: 'validate')
      end

      def offline
        params.merge(type: 'offline')
      end

      def capture(params)
        params.merge(type: 'capture')
      end

      def void(params)
        params.merge(type: 'void')
      end

      def refund(params)
        params.merge(type: 'refund')
      end
    end
  end
end

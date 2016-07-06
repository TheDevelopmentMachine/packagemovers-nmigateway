module PaylineData
  class Transaction
    class << self
      def sale(params)
        transaction_variables('sale', params)
      end

      def auth
      end

      def credit
      end

      def validate
      end

      def offline
      end

      private

      def transaction_variables(type, params)
        variables = {}
        variables[:type]              = type
        variables[:amount]            = params[:amount]
        variables[:orderid]           = params[:order_id]
        variables[:order_description] = params[:order_description]
        variables[:customer_vault_id] = params[:customer_id]
      end
    end
  end
end

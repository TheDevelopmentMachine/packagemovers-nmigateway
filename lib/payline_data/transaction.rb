module PaylineData
  class Transaction
    class << self
      def sale(params)
        { type:              'sale',
          amount:            params[:amount],
          customer_vault_id: params[:customer_id] }
      end

      def refund(params)
        { type:          'refund',
          transactionid: params[:transaction_id],
          amount:        params[:amount] }
      end

      def auth
      end

      def validate
      end

      def offline
      end
    end
  end
end

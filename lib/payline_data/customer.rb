module PaylineData
  class Customer
    # For a list of  params to pass visit https://secure.paylinedatagateway.com/gw/merchants/resources/integration/integration_portal.php#cv_variables
    class << self
      def add(params)
        params.merge(customer_vault: 'add_customer')
      end

      def update(params)
        params.merge(customer_vault: 'update_customer')
      end

      def delete(params)
        params.merge(customer_vault: 'delete_customer')
      end
    end
  end
end

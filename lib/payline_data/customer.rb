module PaylineData
  class Customer
    class << self
      def add(params)
        customer_variables('add_customer', params)
      end

      def update(params)
        customer_variables('update_customer', params)
      end

      def delete(params)
        customer_variables('delete_customer', params)
      end

      private

      def customer_variables(type, params)
        { customer_vault:     type,
          customer_vault_id:  params[:customer_id],
          ccnumber:           params[:ccnumber],
          ccexp:              params[:ccexp],
          first_name:         params[:first_name],
          last_name:          params[:last_name],
          address1:           params[:address1],
          city:               params[:city],
          state:              params[:state],
          zip:                params[:zip] }
      end
    end
  end
end

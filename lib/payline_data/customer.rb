module PaylineData
  class Customer
    self << class
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
        variables = {}
        variables[:customer_vault] = type
        variables[:customer_id]    = params[:customer_id]
        variables[:ccnumber]       = params[:ccnumber]
        variables[:ccexp]          = params[:ccexp]
        variables[:first_name]     = params[:first_name]
        variables[:last_name]      = params[:last_name]
        variables[:address1]       = params[:address1]
        variables[:city]           = params[:city]
        variables[:state]          = params[:state]
        variables[:zip]            = params[:zip]
      end
    end
  end
end

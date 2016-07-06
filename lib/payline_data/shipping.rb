module PaylineData
  class Shipping
    def initialize(root, params)
      create_xml(root, params)
    end

    def create_xml(root, params)
      Nokogiri::XML.Builder.with(root) do |xml|
        xml.shipping {
          xml.send('first-name', params['first_name'])
          xml.send('last-name', params['last_name'])
          xml.send('address1', params['address1'])
          xml.send('city', params['city'])
          xml.send('state', params['state'])
          xml.send('postal', params['postal'])
          xml.send('country', params['country'])
          xml.send('phone', params['phone'])
          xml.send('email', params['email'])
          xml.send('company', params['company'])
          xml.send('address2', params['address2'])
          xml.send('fax', params['fax'])
          xml.send('priority', params['priority'])
        }
      end
    end
  end
end

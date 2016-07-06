module PaylineData
  class Billing
    def initialize(root, params)
      create_xml(root, params)
    end

    def create_xml(root, params)
      Nokogiri::XML.Builder.with(root) do |xml|
        xml.billing {
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
          xml.send('account-type', params['account-type'])
          xml.send('entity-type', params['entity-type'])
          xml.send('priority', params['priority'])
        }
      end
    end
  end
end

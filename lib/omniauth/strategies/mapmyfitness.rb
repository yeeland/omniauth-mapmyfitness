require 'omniauth-oauth'

module OmniAuth
  module Strategies
    class MapMyFitness < OmniAuth::Strategies::OAuth
      # Give your strategy a name.
      option :name, "mapmyfitness"

      # This is where you pass the options you would pass when
      # initializing your consumer from the OAuth gem.
      option :client_options, {:site => "http://api.mapmyfitness.com/3.1",
                               :authorize_url => "https://www.mapmyfitness.com/oauth/authorize/",
                               :scheme => :query_string,
                               :http_method => :post}

      # These are called after authentication has succeeded. If
      # possible, you should try to set the UID without making
      # additional calls (if the user id is returned with the token
      # or as a URI parameter). This may not be possible with all
      # providers.
      uid {
        raw_info['user_id']
      }

      info do
        {
          :name => "#{raw_info['first_name']} #{raw_info['last_name']}",
          :email => raw_info['email'],
          :nickname => raw_info['username'],
          :first_name => raw_info['first_name'],
          :last_name => raw_info['last_name'],
          :location => [raw_info['start_city'], raw_info['start_state'], raw_info['start_country']].join(', '),
          :image => "http://api.mapmyfitness.com/3.1/users/get_avatar?uid=#{raw_info['user_id']}",
          :urls => {:mapmyfitness => "http://www.mapmyfitness.com/profile/#{raw_info['username']}"}
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= MultiJson.decode(access_token.get('/users/get_user').body)['result']['output']['user']
      end
    end
  end
end

OmniAuth.config.add_camelization 'mapmyfitness', 'MapMyFitness'

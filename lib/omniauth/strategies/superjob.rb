require 'omniauth'
require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Superjob < OmniAuth::Strategies::OAuth2
      class NoRawData < StandardError; end

      API_VERSION = '2.0'

      DEFAULT_SCOPE = ''

      option :name, 'headhunter'

      option :client_options, {
                              :site          => 'https://www.superjob.ru/',
                              :token_url     => 'https://api.superjob.ru/2.0/oauth2/access_token',
                              :authorize_url => 'https://www.superjob.ru/authorize/',
                            }

      option :authorize_options, [:scope, :display]

      option :redirect_url, nil

      private

      def callback_url
        options.redirect_url || (full_host + script_name + callback_path)
      end
    end
  end
end
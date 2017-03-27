require 'omniauth'

module OmniAuth
  module Strategies
    autoload :Superjob,  'omniauth/strategies/superjob'
  end
end

OmniAuth.config.add_camelization 'superjob', 'Superjob'

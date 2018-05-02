require "omniauth-oauth2"

module OmniAuth
  module Strategies
    class ConsumerWechat < Wechat
     option :name, 'consumer_wechat'
     
     option :authorize_params, {scope: "snsapi_base"}
     
     def raw_info
       @uid ||= access_token["openid"]
       @raw_info = {"openid" => @uid }
     end

   end
  end
end

require "wykoponrails/version"
require "yaml"
require "httparty"

module Wykoponrails
  include HTTParty
  base_uri "a.wykop.pl"

	@appkey = 'zCgxA79e3S'
	@secret = 'bFE1LsAakU'
=begin

  def initialize(user, pass)
    self.class.basic_auth user, pass
  end
=end
	def self.pobierz
  	url = "/promoted/appkey,#{@appkey}"
		request url
		
	end

  def self.request(url)
  	response = post do |reg|
  		reg.url = url
  		reg.headers['apisign'] = sign url
  	end
  end

  private
  	def sign(url)
  		post_params = params.sort.map {|k, v| v}.join(',')
  		Digesr::MD5.hexdigest(@secret + url)
  	end
end

=begin

Twój klucz aplikacji to zCgxA79e3S, 
a sekret to bFE1LsAakU. Zapisz te dane, żeby użyć ich w swojej aplikacji.

=end

require "wykoponrails/version"
require "httparty"
require "yaml"

module Wykoponrails
	include HTTParty

	base_uri "a.wykop.pl"
	file = YAML.load_file("secret.yml")

	SECRET_KEY = file["secret_key_app"]
	KEY_APP = file["key_app"]


	def self.loguj(url)
		Digest::MD5.hexdigest(SECRET_KEY + url)
	end
	

	def self.find
		url = "http://a.wykop.pl/links/promoted/appkey,#{KEY_APP}"
		res = get(url,
			:headers => { 'apisign' => loguj(url) })
	end

end

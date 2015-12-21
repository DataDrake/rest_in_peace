require 'net/http'
module RIP
	VERSION = '0.1.0'
	def self.request(method,uri,headers={},body=nil, limit=10)
		raise 'Redirect limit exceeded' if limit == 0
		uri = URI(uri)
		klass = Net::HTTP.const_get(method.capitalize)
		raise "HTTP Method not supported: #{method}" if klass.nil?
		req = klass.new(uri)
		headers.each { |k,v| req[k.to_s] = v.to_s }
		req.body = body.to_s if body
		res = Net::HTTP.start(uri.hostname, uri.port, :use_ssl => uri.scheme == 'https') { |http| http.request(req) }
		case res
			when Net::HTTPRedirection
				request(method,res['location'],headers,body, limit - 1)
			else
				[res.code,res.to_hash,res.body]
		end
	end
end
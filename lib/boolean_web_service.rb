require 'open-uri'

def BooleanWebService(address)
  address = address.to_s
  address += '.com' if address.split('.').size == 1
  match = open("http://#{address}").read =~ /yes/i
  !match.nil?
end
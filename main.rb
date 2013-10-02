require_relative 'source'
require 'pry'

# this works!
def valid_ip_addresses(source_text)
	$source_text.scan(/\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b/)
end 

# this works!
def valid_mit_ip_addresses(source_text)
	$source_text.scan(/18.\d{1,3}\.\d{1,3}\.\d{1,3}\b/)
end

# this works!
def non_mit_ip_addresses(source_text)
	$source_text.scan(/\b(?!18)\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b/)
end 

def valid_phone_numbers(source_text)
	array = $source_text.scan(/((\(?[2-9][0-8][0-9]\)?[- ]?)?[2-9][0-9]{2}[- ]?[0-9]{4})/).uniq
end

def area_codes(source_text)
	$source_text.scan(/(\b(\d{3}))-\d{3}-\d{4}/).flatten.uniq
end

# this works!
def email_addresses(source_text)
	$source_text.scan(/[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-z]{2,4}/)
end

# this works!
def zip_codes(source_text)
	$source_text.scan(/\b(\d{5})\b/).flatten
end

# this works!
def hex_colors(source_text)
	$source_text.scan(/(?<=#)(?<!^)\h{6}/)
end
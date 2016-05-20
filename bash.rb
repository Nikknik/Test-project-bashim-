def bash

	require 'open-uri'
    html=open('http://bash.im')

    require 'nokogiri'
    text = Nokogiri::HTML(html)

    text.css('.text').each do |i|
    	puts i.text.encode('utf-8')
    	puts ""

    end
end




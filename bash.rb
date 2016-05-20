def bash

	require 'open-uri'
    html=open('http://bash.im')

    require 'nokogiri'
    text = Nokogiri::HTML(html)

    text.css('.quote').each do |i|
    	puts i.css('.id').text.encode('utf-8')
        puts i.css('.text').text.encode('utf-8')
        puts ""
    end
end




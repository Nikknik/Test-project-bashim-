def bash

    #получаем html сайта
	require 'open-uri'
    html=open('http://bash.im')  

    require 'nokogiri'
    text = Nokogiri::HTML(html)

    #используем класс .quote для получения цитат
    text.css('.quote').each do |i|
    	#вывод на экран id
    	puts i.css('.id').text.encode('utf-8')
    	#вывод на экран самих цитат
        puts i.css('.text').text.encode('utf-8')
        #пустая разделительная строка
        puts ""
    end
end




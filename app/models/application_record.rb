class ApplicationRecord < ActiveRecord::Base
primary_abstract_class
require 'rest-client'
  class << self

    # Fetch list of all countries from restcountries.com
        def countries
              @countries = []
              url = "https://restcountries.com/v2/all"
              @responce = RestClient.get(url)
              @res = JSON.parse(@responce.body)    
                @res.each do |k,v|
                    @countries.push(k["name"])
                end
              return @countries
        end

  #  Fetch opensource weather API for Weather details
        def get_result val
              url = "https://api.openweathermap.org/data/2.5/weather?appid=0023401ec97a392619e841c35220143c&q=#{val}"
              res_weather = RestClient.get(url)
              @res_weather = JSON.parse(res_weather.body)
              Search.create(body: val)
              return @res_weather
        end

  # Convert temp into Celcius 
        def into_celcius val
              return val.to_i - 273
        end
  end
end

class HomepageController < ApplicationController
    require 'rest-client'

# Application root page
    def landing
    end   

# Method for get weather detail and pass data to show_result
    def weather
        if params[:sessions][:body].present?
          @result = ApplicationRecord.get_result(params[:sessions][:body]);
         if @result.present?
             redirect_to show_result_path(@result)
         end
        end
    end

# Method for getting the result and show the result in show template 
    def show_result
        @result = params
    end

end

class TemperatureController < ApplicationController

    skip_before_action :verify_authenticity_token
 
    def fahrenheit_to_celsius
        fahrenheit = params[:fahrenheit].to_f
        celsius = (fahrenheit - 32) * 5/9
        render xml: { celsius: celsius }.to_xml
      end
    
      def celsius_to_fahrenheit
        celsius = params[:celsius].to_f
        fahrenheit = (celsius * 9/5) + 32
        render xml: { fahrenheit: fahrenheit }.to_xml
      end
end

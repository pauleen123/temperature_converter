require 'soap/rpc/endpoint'

class TemperatureSoapService < SOAP::RPC::Endpoint
  soap_service namespace: 'urn:TemperatureService'

  soap_action "fahrenheitToCelsius",
    :args   => {:fahrenheit => :float},
    :return => {:celsius => :float}

  soap_action "celsiusToFahrenheit",
    :args   => {:celsius => :float},
    :return => {:fahrenheit => :float}

  def fahrenheit_to_celsius(fahrenheit)
    (fahrenheit - 32) * 5/9
  end

  def celsius_to_fahrenheit(celsius)
    (celsius * 9/5) + 32
  end
end
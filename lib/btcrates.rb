require 'btcrates/version'
require 'httparty'
require 'json'
require 'btcrates/btc_rates_api'
require 'btcrates/rates'

module BtcRates
  class InvalidError < StandardError; end

  class HttpError < StandardError; end

  def self.get_raw(exchange)
    BtcRates::Rates.new(exchange).perform
  end

  def self.get_rate(exchange)
    BtcRates::Rates.new(exchange, rate: true).perform
  end
end

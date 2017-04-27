module BtcRates
  class Rates
    attr_reader :api, :path

    EXCHANGES = {
      bitstamp: [
        'https://www.bitstamp.net/api/ticker/', 'last'
      ],
      bitfinex: [
        'https://api.bitfinex.com/v1/pubticker/BTCUSD', 'last_price'
      ],
      weighted_average: [
        'https://blockchain.info/q/24hrprice'
      ],
      ok_coin_us: [
        'https://www.okcoin.com/api/ticker.do?ok=1.json', %w(ticker last)
      ],
      ok_coin_cny: [
        'https://www.okcoin.cn/api/v1/ticker.do?symbol=ltc_cny', %w(ticker last)
      ]
    }.freeze

    def initialize(exchange, options = {})
      raise BtcRates::InvalidError, 'Please enter an api as an argument. i.e. :bitfinex, :bitstamp :ok_coin_us etc.' unless EXCHANGES[exchange]
      @api = EXCHANGES[exchange][0]
      @path = EXCHANGES[exchange][1] if options[:rate]
    end

    def response
      @response ||= BtcRatesApi.make_http_call(api)
    end

    def perform
      parsed_response = response =~ /[abc]/ ? JSON.parse(response) : response
      path ? parsed_response.dig(*path) : parsed_response
    end
  end
end

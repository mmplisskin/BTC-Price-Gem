class BtcRatesApi
  def self.make_http_call(api)
    @response = HTTParty.get(api)
    return @response.body if @response.success?
    raise BtcRates::HttpError 'Can not complete HTTP request at this time.'
  end
end

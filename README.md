# BtcRates

[![Gem Version](https://badge.fury.io/rb/btcRates.svg)](http://badge.fury.io/rb/btcRates)

  Btc Rates makes it easy to get current bitcoin rates from a few popular exchanges.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'btcrates'
```

you know the rest ....

## Usage

Require the gem

  	require 'btcrates'

Call a rate like this


  BtcRates.get_rate(:bitfinex)
	=> 232.5

  BtcRates.get_raw(:bitfinex)
  => {"mid"=>"1437.85", "bid"=>"1436.7", "ask"=>"1439.0", "last_price"=>"1439.9", "low"=>"1392.5", "high"=>"1440.0", "volume"=>"9347.69670993", "timestamp"=>"1493328040.633420628"}

## Avaliable Options
  :bitfinex, :bitstamp, :ok_coin_us, :ok_coin_cny, :weighted_average

## Development

### To Do
Setup travis ci to work properly
Add more exchanges



## Contributing

Please do contribute!
Bug reports and pull requests are welcome on GitHub at https://github.com/mmplisskin/btcRates.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
We are not responsible for anything--use this gem with care.

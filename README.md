# simpleweather-rails

simpleweather-rails is a gem to include simpleWeather.js ([GitHub](https://github.com/monkeecreate/jquery.simpleWeather)) within your rails app.

This gem uses simpleWeather.js version 3.1.0
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simpleweather-rails'
```
Add the following line to /assets/javascripts/application.js

```javascript
//= simpleWeather
```
And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simpleweather-rails

## Usage
Javascript
```javascript
$.simpleWeather({
  location: 'Las Vegas, NV',
  unit: 'f',
  success: function(weather){
    html = '<h1>' + weather.temp + '</h1>';
    $('#weather').html(html);
  },
  error: function(error){
    $('#weather').html('<p>' + error + '</p>');
  }
});
```
HTML
```html
<div id="weather"></div>
```
The documentation for simpleWeather.js can be found [here](http://simpleweatherjs.com).  There are tons of more complete examples on the website and Github.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/45sixty/simpleweather-rails.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT) and any applicable licensing by the [creator of simpleWeather.js](http://simpleweatherjs.com).

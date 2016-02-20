## CarrierWave Jpegtran optimizer

This gem allows you to optimize your JPEG uploads with [jpegtran](http://linux.die.net/man/1/jpegtran) using the [jpegtran-ruby](https://github.com/dimko/jpegtran-ruby) gem.

![Travis CI](https://travis-ci.org/dimko/carrierwave-jpegtran.svg)

### Installation

Add this line to your application's Gemfile:

```ruby
gem 'carrierwave-jpegtran'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install carrierwave-jpegtran

### Usage

To add JPEG optimization to your CarrierWave uploader, you need to include the module and apply the optimization:

```ruby
class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::Jpegtran

  process :optimize # apply to all versions

  # or

  version :thumbnail do
    process :optimize, copy: :none # to a single image version with the option `-copy none`
  end
end
```

### Development

After checking out the repo, run `bin/setup` to install dependencies.
You can also run `bin/console` for an interactive prompt that will allow you to experiment.

### Contributing

Bug reports and pull requests are welcome.

### License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

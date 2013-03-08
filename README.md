# Présentations ([Ruby Paris](http://www.rubyparis.org)) [![Build Status](https://travis-ci.org/tibastral/presentations.png?branch=master)](https://travis-ci.org/tibastral/presentations)

## Meetup

Add the meetup keys in `config/initializers/omniauth`

```ruby
  Rails.application.config.middleware.use OmniAuth::Builder do
    provider :meetup, ENV['MEETUP_KEY'], ENV['MEETUP_SECRET']
    # provider :meetup, 'MEETUP_KEY, MEETUP_SECRET if not a env var
  end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

# Dimsum

Dimsum takes a file and a number of lines and prints a reservoir sample of the
file to standard output

## Installation

Add this line to your application's Gemfile:

    gem 'dimsum'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dimsum

## Usage
```sh
dimsum filename
  -n, --number [Fixnum]
```
or
```sh
cat filename | dimsum
  -n, --number [Fixnum]
```
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

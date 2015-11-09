# str_to_hash
This gem convert from String which follow Hash format to collectively HashClass.  
You can revert string which was converted by 'to_s' method.

## How to Install
~~~~
gem install str_to_hash
~~~~

## Usage
You can convert by 'to_h' method.
~~~~
hash = {'foo'=>'bar', 'fizz'=>'bazz'}
str = hash.to_s


str => "{\"foo\"=>\"bar\", \"fizz\"=>\"bazz\"}"
str.class => String
str.size => 30

str.to_h => {"foo"=>"bar", "fizz"=>"bazz"}
str.to_h.class => Hash
str.to_h.size => 2
~~~~

## Contributing

If you would like to contribute, please...

1. Fork.
2. Make changes in a branch & add unit tests.
3. Run Unit Test
~~~~
$ rspec spec/str_to_hash_spec.rb
~~~~
4. Create a pull request.

Contributions, improvements, comments and suggestions are welcome!

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

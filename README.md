MotionFacon
=====

MotionFacon is a port of Facon mocking library to RubyMotion platform. It brings mocking functionality to Bacon which is
the default (and only?) test framework for rubymotion.

I tried to make minimal changes to original library and will try to keep up with upstream.

Synopsis
--------

To use MotionFacon you need to install it with `gem install motion-facon` and then require it in you Rakefile with `require motion-facon.`

Alternatively you can add the following to your Gemfile `gem 'motion-facon'`.

You can now write [Bacon](https://github.com/chneukirchen/bacon) specs like this (in RSpec-like style):

```ruby
  describe 'PersonController' do
    extend Facon::SpecHelpers

    before do
      @konata = mock('konata', :id => 1, :name => 'Konata Izumi')
      @kagami = mock('kagami', :id => 2, :name => 'Kagami Hiiragi')
    end

    it "should find all people on GET to 'index'" do
      Person.should.receive(:find).with(:all).and_return([@konata, @kagami])

      Person.list
    end

    it "should find the person with id of 1 on Get to 'show/1'" do
      Person.should.receive(:find).with(1).and_return(@konata)

      Person.first
    end
  end
```

For now, more examples can be found in the specs included with the Facon gem. I promise to get better examples into the documentation!

See Facon::Baconize for more documentation on using Facon with [Bacon](https://github.com/chneukirchen/bacon).

Requirements
------------

* Recent version of RubyMotion. Tested against 1.35.


Todos
-----

* Keep up with upstream

Contributors
------------

* [James Tucker](https://github.com/raggi) for #times, #once, #never expectation matchers.
* [Peter Kim](https://github.com/petejkim) for [MacBacon](https://github.com/alloy/MacBacon) support.
* [Yossef Mendelssohn](https://github.com/ymendel) for Ruby 1.9.2 compatibility fixes.

Thanks to
---------

* [RSpec](http://rspec.info/) for creating spec/mocks, from which a lot of the code for Facon is stolen.
* [Christian Neukirchen](https://github.com/chneukirchen) for creating Bacon.
* [Cheah Chu Yeow](https://github.com/chuyeow) for the original Facon gem.

License
-------

(The MIT License)

Copyright (c) 2008 Cheah Chu Yeow

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

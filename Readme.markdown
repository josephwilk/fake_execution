Fake Execution
======

[![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/josephwilk/fake_execution)
[![Build Status](https://secure.travis-ci.org/josephwilk/fake_execution.png)](http://travis-ci.org/josephwilk/fake_execution)


Execution, but... like... fake.

Usage 
-----

Using fake-execution safe which does not automatically activate FakeExecution, you have to do that manually:

```ruby
    require 'fake_execution/safe'

    FakeExecution.activate!

    `echo *` # This is not executed
    
    `git checkout git://github.com/josephwilk/fake-execution.git`
    `touch monkeys`
    system("git add monkeys")
    system('git commit -m "needs more monkeys"')
    `git push`

    FakeExecution.deactivate!

    cmds[0].should =~ /echo/
    cmds[1].should =~ /git checkout/
    cmds[2].should == 'touch monkeys'

    `echo *` # outputs: echo *
```

Using Rspec:

```ruby
     require 'fake_execution/spec_helper'
     
     describe "monkeys" do
       include FakeExecution::SpecHelpers
       
       it "should touch the monkey" do
         `touch monkey`
         
         cmds[0].should == 'touch monkey'
       end
     end
```

Using Unsafe mode:

```ruby
     require 'fake_execution'
     
     `touch monkey`
     puts cmds[0]  # outputs: touch monkey
```

License
-------

(The MIT License)

Copyright (c) 2011,2012 Joseph Wilk

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

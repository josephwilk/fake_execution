Fake Execution
======

Execution, but... like... fake.

Usage
-----

    require 'fake-execution/safe'

    FakeExecution.activate!

    `git checkout git://github.com/josephwilk/fake-execution.git`
    `touch monkeys`
    system("git add monkeys")
    system('git commit -m "needs more monkeys"')
    `git push`

    FakeExecution.deactivate!

    cmds[0].should =~ /git checkout/
    cmds[1].shold == 'touch monkeys'


License
-------

(The MIT License)

Copyright (c) 2011 Joseph Wilk

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
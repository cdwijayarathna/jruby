# Copyright (c) 2015 Oracle and/or its affiliates. All rights reserved. This
# code is released under a tri EPL/GPL/LGPL license. You can use it,
# redistribute it and/or modify it under the terms of the:
#
# Eclipse Public License version 1.0
# GNU General Public License version 2
# GNU Lesser General Public License version 2.1

module Truffle

  # Debug utilities specific to Truffle.
  module Debug

    # Break and enter an interactive shell.
    # @return [nil]
    #
    # # Usage
    # 
    # In the shell you can type normal Ruby expressions and have them evaluated
    # in the current frame. Results will be printed via `#inspect`, like in
    # IRB.
    # 
    # Extra commands available are:
    #
    # * `continue` leave the interactive shell and continue execution
    # * `exit` exit the VM
    # * `backtrace` print a backtrace, with numbered frames
    # * `frame n` make the nth frame active for expressions that you type into
    #   the shell (see +backtrace+ to find the frame you want)
    #
    # # Example
    #
    # In your ruby code call `Truffle::Debug.break` where you want to break.
    # When that method is called you will see the shell:
    #
    # ```
    # > backtrace
    #   ▶    at Truffle::Primitive#simple_shell
    #   1    at core:/core/truffle/debug.rb:14:in 'break'
    #   2    at test.rb:4:in 'foo'
    #   3    at test.rb:9:in 'bar'
    #   4    at test.rb:12:in '<main>'
    # > frame 2
    # > x + y
    # 110
    # > frame 3
    # > a
    # 99
    # > continue
    # ```
    def self.break
      Truffle::Primitive.simple_shell
    end

  end

end

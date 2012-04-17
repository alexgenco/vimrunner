module Vimrunner
  class InvalidCommandError < RuntimeError; end

  class TimeoutError < RuntimeError
    def message
      "Timed out while waiting for serverlist. Is an X11 server running?"
    end
  end

  class UnsupportedOSError < RuntimeError
    def initialize(os)
      super
      @os = os
    end

    def message
      "Sorry, but your operating system (#{@os}) is not supported at this time"
    end
  end
end

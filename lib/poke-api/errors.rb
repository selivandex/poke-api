module Poke
  module API
    class Errors
      class InvalidProvider < StandardError
        def initialize(provider)
          super("Invalid provider #{provider}.")
        end
      end

      class InvalidRPC < StandardError
        def initialize(rpc)
          super("Invalid RPC enum #{rpc}.")
        end
      end

      class LoginRequired < StandardError
        def initialize
          super('Not logged in currently, please login.')
        end
      end

      class InvalidRequestEntry < StandardError
        def initialize(subreq)
          super("Subrequest entry #{subreq} is invalid.")
        end
      end

      class UnknownProtoFault < StandardError
        def initialize(error)
          super("An unknown proto fault has occured => [#{error} @ #{error.backtrace.first}]")
        end
      end

      class LoginFailure < StandardError
        def initialize(provider, error)
          super("Unable to login to #{provider} => [#{error} @ #{error.backtrace.first}]")
        end
      end
    end
  end
end

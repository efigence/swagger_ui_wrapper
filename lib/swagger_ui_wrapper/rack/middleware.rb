require "rack/file"
require "rack/utils"

module SwaggerUiWrapper
  module Rack
    class MiddleWare
      def initialize(app, path = '/swagger')
        @app = app
        @path = path
      end

      def call(env)
        if env['REQUEST_URI'] == @path
          [200, {'Content-Type' => 'text/html'}, ['SwaggerUiWrapper']]
        else
          @app.call(env)
        end
      end
    end
  end
end

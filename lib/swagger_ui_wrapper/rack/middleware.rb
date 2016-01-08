require "rack/file"
require "rack/utils"

module SwaggerUiWrapper
  module Rack
    class MiddleWare
      def initialize(app, options)
        @app = app
        @api_url_base = options[:api_url_base]
        @path = options[:path] || '/swagger/'
        swagger_path = File.expand_path('../../../vendor/assets', File.dirname(__FILE__))
        @swagger_assets_handler = ::Rack::Static.new @app, root: swagger_path,
                                                           urls: ['/swagger'],
                                                           index: 'index.html'
      end

      def call(env)
        if env['REQUEST_URI'] == @path
          [301, {'Location' => env['REQUEST_URI'] + '?url=' + @api_url_base, 'Content-Type' => 'text/html', 'Content-Length' => '0'}, []]
        elsif env['REQUEST_URI'].start_with? @path
          @swagger_assets_handler.call(env)
        else
          @app.call(env)
        end
      end
    end
  end
end

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
        if env['REQUEST_PATH'] && env['REQUEST_PATH'].start_with?(@path)
          _env = env.merge("QUERY_STRING" => "url=http://localhost:9292/v1/swagger_doc")
          @swagger_assets_handler.call(_env)
        else
          @app.call(env)
        end
      end
    end
  end
end

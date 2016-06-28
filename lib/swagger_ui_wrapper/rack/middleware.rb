require "rack/file"
require "rack/utils"

module SwaggerUiWrapper
  module Rack
    class MiddleWare
      def initialize(app, options)
        @app = app
        @api_url_base = options[:api_url_base] # http://test-server.com
        @path = options[:path] || '/swagger/'
        swagger_path = File.expand_path('../../../vendor/assets', File.dirname(__FILE__))
        @swagger_assets_handler = ::Rack::Static.new @app, root: swagger_path,
                                                          urls: ['/swagger'] #,
                                                          # index: 'v1.html' # switched to redirect instead of render
      end

      def call(env)
        env_request_path = env['REQUEST_PATH'] || env['REQUEST_URI']

        if env_request_path && env_request_path.start_with?(@path)
          if env_request_path == '/swagger/'
            [302, {'Content-Type' => 'text',
                   'Location' => (@api_url_base || (env['rack.url_scheme'] + "://" + env["HTTP_HOST"].to_s)) + @path + 'v1.html',
                   'Content-Type' => 'text/html; charset=UTF-8'}, ['302 found']]
          else
            # some hack for GRAPE:
            # _env = env.merge("QUERY_STRING" => "url=http://localhost:9292/v1/swagger_doc")
            # @swagger_assets_handler.call(_env)
            @swagger_assets_handler.call(env)
          end
        else
          @app.call(env)
        end
      end
    end
  end
end

module GraphqlPlaygroundRails
  class Engine < ::Rails::Engine
    isolate_namespace GraphqlPlaygroundRails

    initializer 'webpacker.proxy' do |app|
      insert_middleware = begin
                            GraphqlPlaygroundRails.webpacker.config.dev_server.present?
                          rescue
                            nil
                          end
      next unless insert_middleware

      app.middleware.insert_before(
        0, Webpacker::DevServerProxy,
        ssl_verify_none: true,
        webpacker: GraphqlPlaygroundRails.webpacker
      )
    end

    root_dir = File.dirname(__dir__)
    public_dir = File.join(root_dir, 'public')
    puts "Mounting middleware at root = #{public_dir}"
    config.app_middleware.use(
      Rack::Static,
      urls: ['/playground'], root: public_dir
    )
  end
end

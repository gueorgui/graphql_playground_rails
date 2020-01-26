module GraphqlPlaygroundRails
  module ApplicationHelper
    include ::Webpacker::Helper

    def current_webpacker_instance
      GraphqlPlaygroundRails.webpacker
    end
  end
end

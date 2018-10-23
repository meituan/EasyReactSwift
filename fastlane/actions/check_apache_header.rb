require 'active_support'
require 'active_support/core_ext'

module Fastlane
  module Actions
    class CheckApacheHeaderAction < Action
      def self.run(params)
        apache_header = File.read './Documentation/common/Copyright.txt'
        header_size = apache_header.size
        file_extensions = "{#{params[:file_extens].join(',')}}"
        all_file_paths = Dir["Example/**/*#{file_extensions}", "Sources/**/*#{file_extensions}"]
        error_file_paths = all_file_paths.reject do |path|
          file_header = File.read path, header_size
          file_header == apache_header
        end
        if error_file_paths.present?
          UI.user_error! "Those file don't have apache header:\n#{error_file_paths.join("\n")}\n"
        else
          UI.success "Apache header check success"
        end
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "Check apache header"
      end

      def self.details
        "You can use this action to check source files contains apche header"
      end

      def self.available_options
        # Define all options your action supports. 
        
        # Below a few examples
        [
          FastlaneCore::ConfigItem.new(key: :file_extens,
                                       env_name: "FL_CHECK_APACHE_HEADER_FILE_EXTENS",
                                       description: "File extens which need to check",
                                       is_string: false,
                                       default_value: %w(.m .h .swift),
                                       optional: true
                                       )
        ]
      end

      def self.output
      end

      def self.return_value
        nil
      end

      def self.authors
        ["William Zang"]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end

module Backup
  module Configuration
    class Adapter
      extend Backup::Configuration::Attributes
      generate_attributes %w(files user password database skip_tables commands additional_options)

      def initialize
        @options = Backup::Configuration::AdapterOptions.new
      end

      def options(&block)
        @options.instance_eval &block
      end
      
      def get_options
        @options
      end

    end
  end
end

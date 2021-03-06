require 'm2prof'

module M2Prof
  module Commands
    # Command to list the available settings files.
    # @author Richard Harrah
    class List
      # Method to handle arguments and options passed
      # to this class by commander.
      # @param args [Array<String>] arguments passed to this command
      # @param options [::Commander::Command::Options] options (flags) passed
      #     to this command
      # @return [void]
      # rubocop:disable UnusedMethodArgument
      def handle(*args, options)
        M2Prof::Wizardry.fetch_sanitized_settings.each { |settings|
          puts settings
        }
        nil
      end
      # rubocop:enable UnusedMethodArgument
    end
  end
end

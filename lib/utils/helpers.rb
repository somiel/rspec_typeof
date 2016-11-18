module RspecTypeof
  module Helpers
    # Defined for matching camelcase class names
    def camelcase(string)
      string = string.sub(/^[a-z\d]*/) { $&.capitalize }
      string.gsub(/(?:_|(\/))([a-z\d]*)/) { "#{$1}#{$2.capitalize}" }.gsub('/', '::')
    end
  end
end

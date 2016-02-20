require "jpegtran"
require "carrierwave"

require_relative "jpegtran/version"

module CarrierWave
  module Jpegtran
    def optimize(*options)
      ::Jpegtran.optimize(current_path, Hash[options])
    end
  end
end

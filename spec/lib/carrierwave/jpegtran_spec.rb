require "spec_helper"

describe CarrierWave::Jpegtran do
  describe "#optimize" do
    let(:uploader) do
      Class.new do
        include CarrierWave::Jpegtran

        def current_path
          "/path/to/image.jpg"
        end
      end
    end

    it "delegates to Jpegtran module with the current path to the file" do
      expect(::Jpegtran).to receive(:optimize).with("/path/to/image.jpg", {}).and_return(true)
      uploader.new.optimize
    end

    it "converts options to Hash before delegation" do
      expect(::Jpegtran).to receive(:optimize).with("/path/to/image.jpg", copy: :none).and_return(true)
      uploader.new.optimize([:copy, :none])
    end
  end
end

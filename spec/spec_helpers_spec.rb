describe "Facon::SpecHelpers" do

  extend Facon::SpecHelpers

  it "includes Facon::Mockable in Object" do
    Object.included_modules.should.include Facon::Mockable
  end

  # to verify this test, uncomment line #4 in lib/motion-facon/spec_helpers.rb
  describe "It doesn't error when extending the spec helpers again" do

    extend Facon::SpecHelpers

    it "includes Facon::Mockable in Object" do
      Object.included_modules.should.include Facon::Mockable
    end

  end

end

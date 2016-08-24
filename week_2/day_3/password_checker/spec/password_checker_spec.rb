require_relative("../lib/password_checker.rb")

RSpec.describe PasswordChecker do
  describe "#check_password" do

    # it "returns false for passwords shorter than 7 characters" do
    #   the_checker = PasswordChecker.new

    #   result = the_checker.check_password("nizar@example.com", "fdbdbbbdgfb")

    #   expect( result ).to eq(true)
    # end

    # it "returns false for passwords that don't contain letters" do
    #   the_checker = PasswordChecker.new

    #   expect( the_checker.check_password("nizar@example.com", "1234567,.*&") ).to eq(false)
    # end

    # it "returns false for passwords that don't contain numbers" do
    #   the_checker = PasswordChecker.new

    #   expect( the_checker.check_password("nizar@example.com", "ahshgdja") ).to eq(false)
    # end

    # it "returns false for passwords that don't contain symbols" do
    #   the_checker = PasswordChecker.new

    #   expect( the_checker.check_password("nizar@example.com", "ahshg12334") ).to eq(false)
    # end

    # it "returns false for passwords that don't contain uppercase letter" do
    #   the_checker = PasswordChecker.new

    #   expect( the_checker.check_password("nizar@example.com", "ahshg") ).to eq(false)
    # end

    # it "returns false for passwords that don't contain lowerercase letter" do
    #   the_checker = PasswordChecker.new

    #   expect( the_checker.check_password("nizar@example.com", "HGAHVDSH") ).to eq(false)
    # end

    # it "returns false for passwords that contain email name" do
    #   the_checker = PasswordChecker.new

    #   expect( the_checker.check_password("nizar@example.com", "daniel") ).to eq(false)
    # end
    it "returns true for passwords that meet all criteria" do
      the_checker = PasswordChecker.new

      expect( the_checker.check_password("nizar@example.com", "Abb12*&78&bag") ).to eq(true)
    end
  end

end
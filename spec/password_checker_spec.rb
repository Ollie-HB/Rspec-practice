require 'password_checker'

RSpec.describe PasswordChecker do
  it "succeeds if password is greater than/equal to 8 characters" do
    password = PasswordChecker.new
    expect(password.check("Password")).to eq true
  end

  it "fails if password is less than 8 characters" do
    password = PasswordChecker.new
    expect { password.check("passwor")}.to raise_error "Invalid password, must be 8+ characters."
  end
end

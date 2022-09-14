require 'present'

RSpec.describe Present do
  it "successfully wraps and unwraps presents" do
    present = Present.new
    present.wrap(6)
    expect(present.unwrap).to eq 6
  end

  it "fails to wrap if present is already wrapped" do
    present = Present.new
    present.wrap(1)
    expect { present.wrap(1) }.to raise_error "A contents has already been wrapped."
  end

  it "fails to unwrap if present isn't wrapped" do
    present = Present.new
    expect { present.unwrap }.to raise_error "No contents have been wrapped." 
  end
end
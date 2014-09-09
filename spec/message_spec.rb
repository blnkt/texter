require 'rails_helper'

describe Message, vcr: true do
  it "won't send if there's an error" do
    message = Message.new(body: 'hi', to: '1111111', from: '7246342047')
    expect(message.save).to eq(false)
  end

  it 'adds an error for invalid numbers' do
    message = Message.new(body: 'hi', to: '1111111', from: '7246342047')
    message.save
    expect(message.errors[:base]).to eq(["The 'To' number 1111111 is not a valid phone number."])
  end
end

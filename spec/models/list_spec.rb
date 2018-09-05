require 'rails_helper'


RSpec.describe List, :type => :model do
    it "is not valid without a description" do
        list = List.create(description: nil)
        expect(list).not_to be_valid
        expect(list.errors.messages[:description]).to eq ["can't be blank"]
    end

    it "is not valid without a deadline" do
        list = List.create(deadline: nil)
        expect(list).not_to be_valid
        expect(list.errors.messages[:deadline]).to eq ["can't be blank"]
    end
end
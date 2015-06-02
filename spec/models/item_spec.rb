require 'rails_helper'

RSpec.describe Item, type: :model do
  describe ".mark_done" do
  	it "marks the specified item as done" do
  		item = Item.create name: "item A"
  		Item.mark_done item.id
  		expect(item.reload).to be_done
  	end
  end
end

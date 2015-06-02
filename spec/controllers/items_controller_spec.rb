require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
	describe "GET index" do
		let(:items) { [double(:item)] }

		before do
			allow(Item).to receive(:all) { items }
		end

		it "assign all the items for the view" do
			get :index
       		expect(assigns[:items]).to eq items
		end
	end
end

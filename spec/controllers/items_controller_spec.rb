require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
	let(:items) { [double(:items)] }
	
	describe "GET index" do
		it "assign all the items for the view" do
			get :index
			expect(assigns[:items]).to eq items
		end
	end
end

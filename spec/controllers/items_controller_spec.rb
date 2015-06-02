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

	describe "POST create" do
		before do
			allow(Item).to receive :create
		end

		it "creates a new item" do
			post :create, item: {name: "do it!"}
			expect(Item).to have_received(:create).with name: "do it!"
		end

		it "redirect to the index" do
			post :create
			expect(response).to redirect_to action: :index
		end
	end
end

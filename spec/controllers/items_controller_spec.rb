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

		def do_create
			post :create, item: {name: "do it!"}
		end

		it "creates a new item" do
			do_create
			expect(Item).to have_received(:create).with name: "do it!"
		end

		it "redirect to the index" do
			do_create
			expect(response).to redirect_to action: :index
		end
	end

	describe "POST mark_done" do
		before do
			allow(Item).to receive :mark_done
		end

		def do_mark_done
			post :mark_done, id: "1"
		end

		it "marks item as done" do
			do_mark_done
			expect(Item).to have_received(:mark_done).with "1"
		end

		it "redirect to the index" do
			do_mark_done
			expect(response).to redirect_to action: :index
		end
	end
end

require "rails_helper"

RSpec.describe "/input_forms", type: :request do
  describe "GET /index" do
    let!(:input_form) { create(:input_form) }

    it "renders a successful response" do
      get input_forms_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    let!(:input_form) { create(:input_form) }

    it "renders a successful response" do
      get input_form_url(input_form)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_input_form_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    let!(:input_form) { create(:input_form) }

    it "renders a successful response" do
      get edit_input_form_url(input_form)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new InputForm" do
        expect {
          post input_forms_url, params: {input_form: attributes_for(:input_form)}
        }.to change(InputForm, :count).by(1)
      end

      it "redirects to the created input_form" do
        post input_forms_url, params: {input_form: attributes_for(:input_form)}
        expect(response).to redirect_to(input_form_url(InputForm.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new InputForm" do
        expect {
          post input_forms_url, params: {input_form: {title: ""}}
        }.to change(InputForm, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post input_forms_url, params: {input_form: {title: ""}}
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PATCH /update" do
    let!(:input_form) { create(:input_form) }

    context "with valid parameters" do
      it "updates the requested input_form" do
        patch input_form_url(input_form), params: {input_form: {title: "title", description: "description"}}
        input_form.reload
        expect(input_form.title).to eq("title")
        expect(input_form.description).to eq("description")
      end

      it "redirects to the input_form" do
        patch input_form_url(input_form), params: {input_form: {title: "title", description: "description"}}
        input_form.reload
        expect(response).to redirect_to(input_form_url(input_form))
      end
    end

    context "with invalid parameters" do
      it "renders a response with 422" do
        patch input_form_url(input_form), params: {input_form: {title: ""}}
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE /destroy" do
    let!(:input_form) { create(:input_form) }

    it "destroys the requested input_form" do
      expect {
        delete input_form_url(input_form)
      }.to change(InputForm, :count).by(-1)
    end

    it "redirects to the input_forms list" do
      delete input_form_url(input_form)
      expect(response).to redirect_to(input_forms_url)
    end
  end
end

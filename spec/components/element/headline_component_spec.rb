# frozen_string_literal: true

require "rails_helper"

RSpec.describe Element::HeadlineComponent, type: :component do
  subject { render_inline(component).to_html }

  let(:component) { described_class.new(text:) }
  let(:text) { Faker::Lorem.sentence }

  it { is_expected.to include text }
end

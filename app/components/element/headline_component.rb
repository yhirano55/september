# frozen_string_literal: true

class Element::HeadlineComponent < ViewComponent::Base
  def initialize(text:)
    @text = text
  end
end

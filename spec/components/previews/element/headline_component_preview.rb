# frozen_string_literal: true

class Element::HeadlineComponentPreview < ViewComponent::Preview
  # @param text
  def default(text: '見出し')
    render Element::HeadlineComponent.new(text:)
  end
end

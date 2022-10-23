# frozen_string_literal: true

class InputFormForm < ApplicationForm
  form do |f|
    f.text_field(
      name: :title,
      label: InputForm.human_attribute_name(:title),
      required: true
    )

    f.text_area(
      name: :description,
      label: InputForm.human_attribute_name(:description)
    )

    f.submit(name: :submit, label: "Submit", scheme: :primary, block: true)
  end
end

class Relation < ActiveRecord::Base
  belongs_to :text
  belongs_to :related_text, class_name: "Text"

  # after_create :create_inverse, unless: :has_inverse?
  # after_destroy :destroy_inverses, if: :has_inverse?

  # # The relation is created when one text is shoveled into
  # # the other text's related_texts. After the Relation is
  # # instantiated, the inverse relation is created.
  # def create_inverse
  #     self.class.create(inverse_relation_options)
  # end

  # def destroy_inverses
  #   inverses.destroy_all
  # end

  # # Check for presence before callback
  # def has_inverse?
  #   self.class.exists?(inverse_relation_options)
  # end

  # # finds all inverse relationships of the class calling the method
  # def inverses
  #   self.class.where(inverse_relation_options)
  # end

  # # The inverse relationship is where the related text is the
  # # text which initiated the callback, and vice versa.
  # def inverse_relation_options
  #   { related_text_id: self.text_id, text_id: self.related_text_id }
  # end
end

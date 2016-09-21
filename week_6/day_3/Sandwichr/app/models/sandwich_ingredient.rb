class SandwichIngredient < ApplicationRecord
  belongs_to :sandwich
  belongs_to :ingredient
  belongs_to :user
end
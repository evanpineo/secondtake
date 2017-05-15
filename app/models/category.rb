class Category < ApplicationRecord
  validates :manufacturer, length: { minimum: 2 }, presence: true
  validates :model, length: { minimum: 2 }, presence: true
  validates :specs, presence: true
end
class Promoter < ApplicationRecord
  has_many :shows
  has_many :users, through: :shows
  before_create :slugify
  validates :name, :email, presence: true
  validates :email, uniqueness: true

  def slugify
    self.slug = name.parameterize
  end
end
# create_table "promoters", force: :cascade do |t|
#   t.string "name"
#   t.string "email"
#   t.string "slug"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
# end

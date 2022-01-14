class ListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :category_id, :category
  # belongs_to :category
end

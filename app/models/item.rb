class Item < ApplicationRecord
  mount_uploader :image, AvatarUploader
  belongs_to :user

  has_and_belongs_to_many :tags

  TYPES = [:shirt, :pants, :shorts, :skirt, :dress, :outerwear, :shoes, :accessory]
  COLORS = [:black, :white, :grey, :brown, :beige, :purple, :blue, :green, :yellow, :orange, :red, :pink, :multi]

  paginates_per 20
end

class Image < Obj

  attribute :blob, :binary
  attribute :title, :string

  def apply_image_transformation?
    !binary_content_type.try(:include?, "svg")
  end

end

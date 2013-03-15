class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  include CarrierWave::RMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :large_thumb do
    process :resize_to_limit => [290, 250]
  end

  version :thumb do
    process :resize_to_limit => [187, 157]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end

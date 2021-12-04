class FeaturedImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  process resize_to_fit: [1920, 1920]

  version :thumb_800 do
    process resize_to_fill: [824,824]
  end
  version :thumb_600 do
    process resize_to_fill: [600,600]
  end
  version :thumb_450 do
    process resize_to_fill: [450,450]
  end
  version :thumb_350 do
    process resize_to_fill: [350,350]
  end
end
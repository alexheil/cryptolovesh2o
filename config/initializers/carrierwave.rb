CarrierWave.configure do |config|

  if Rails.env.production?
    config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     ENV['AWS_ACCESS_KEY'],                        # required unless using use_iam_profile
      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],                        # required unless using use_iam_profile
      region:                ENV['AWS_REGION']                # optional, defaults to 'us-east-1'
    }
    config.fog_directory  = ENV['S3_BUCKET_NAME']                                      # required
    config.storage :fog
  else
    config.storage :file
  end

end
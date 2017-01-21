CarrierWave.configure do |config|
   config.fog_credentials = {
     :provider              => "AWS",
     :aws_access_key_id     => ENV['AWS_S3_ACCESS_KEY_ID'],
     :aws_secret_access_key => ENV['AWS_S3_SECRET_ACCESS_KEY'],
     :endpoint               => "https://s3.amazonaws.com",
     :region                 => 'us-east-1'
     }

   config.fog_directory = ENV['AWS_S3_BUCKET']
   config.fog_public = false

end




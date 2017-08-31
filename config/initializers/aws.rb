CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'xxx',                        # required
    aws_secret_access_key: 'yyy',                        # required
    region:                '',                  # optional, defaults to 'us-east-1'
    endpoint:              '' # optional, defaults to nil
  }
  config.fog_directory  = 'chanc1209'                  
end
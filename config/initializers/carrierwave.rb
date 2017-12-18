CarrierWave.configure do |config|
	config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAI3JVGOPS3TPBF4KQ',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'eu-central-1',                  # optional, defaults to 'us-east-1'
    # host:                  'event-agregator.s3.eu-central-1.amazonaws.com',             # optional, defaults to nil
    # endpoint:              'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'event-agregator'                          # required
  config.fog_public     = false                                        # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.day.to_i}" } # optional, defaults to {}
end

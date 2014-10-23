CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp') 
  config.cache_dir = 'carrierwave' 

  config.fog_credentials = {
    :provider                         => 'Google',
    :google_storage_access_key_id     => 'GOOGKUCF6L6TLEULMT4N',
    :google_storage_secret_access_key => '/k7JlRiLRZn0LI1Lge4GjXVIFmc8wp7GPk2YmKUz'
  }
  config.fog_directory = 'helena'
end
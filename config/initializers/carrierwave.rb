CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp') 
  config.cache_dir = 'carrierwave' 

  config.fog_credentials = {
    :provider                         => 'Google',
    :google_storage_access_key_id     => ENV['GOOGLE_STORAGE_KEY'],
    :google_storage_secret_access_key => ENV['GOOGLE_SECRET_KEY']
  }
  config.fog_directory = 'helena'
end

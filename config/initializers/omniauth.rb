Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '377088085704166', 'f6d87c2a1cbee037fb80bab70656d666'
end
Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    'iIccVjlH0b1V6yui3sqptN5cffsEV0C0',
    'kumkjcnOUzkZRDdyMFq4WHyGB9AnHhir0hWaNgrZsPCIjdqC5T3G0zEu_lBiFm2n',
    'dev-geoji-ld.auth0.com',
    callback_path: '/auth/auth0/callback',
    authorize_params: {
      scope: 'openid email profile'
    }
  )
end

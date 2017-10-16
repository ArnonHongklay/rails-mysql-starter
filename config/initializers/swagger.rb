GrapeSwaggerRails.options.url      = '/api/v1/swagger_doc'
# GrapeSwaggerRails.options.app_url  = 'http://swagger.wordnik.com'
GrapeSwaggerRails.options.before_action do
  GrapeSwaggerRails.options.app_url = request.protocol + request.host_with_port
end
GrapeSwaggerRails.options.app_name = 'Lockr'
# GrapeSwaggerRails.options.headers['Special-Header'] = 'Some Secret Value'
# GrapeSwaggerRails.options.doc_expansion = 'list'
# GrapeSwaggerRails.options.supported_submit_methods = ["get"]
# GrapeSwaggerRails.options.validator_url = nil

# GrapeSwaggerRails.options.api_auth     = 'basic' # Or 'bearer' for OAuth
# GrapeSwaggerRails.options.api_key_name = 'Authorization'
# GrapeSwaggerRails.options.api_key_type = 'header'

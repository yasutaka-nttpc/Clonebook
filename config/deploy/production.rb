server '52.196.45.173', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/Users/timu/.ssh/id_rsa'
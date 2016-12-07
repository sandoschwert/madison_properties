server '45.55.189.80', user: 'deploy', roles: %w{web app db}

set :ssh_options, {
    forward_agent: true,
    user: 'deploy'
  }
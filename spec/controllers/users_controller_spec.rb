RSpec.describe UsersController, type: :controller do
  it { should use_before_action(:set_user) }

  it { should route(:get, '/users').to(controller: :users, action: :index) }
  it { should route(:get, '/users/1').to(controller: :users, action: :show, id: 1) }
  it { should route(:get, '/users/sign_in').to(controller: 'devise/sessions', action: :new) }
  it { should route(:post, '/users/sign_in').to(controller: 'devise/sessions', action: :create) }
  it { should route(:delete, '/users/sign_out').to(controller: 'devise/sessions', action: :destroy) }
  it { should route(:get, '/users/password/new').to(controller: 'devise/passwords', action: :new) }
  it { should route(:get, '/users/password/edit').to(controller: 'devise/passwords', action: :edit) }
  it { should route(:patch, '/users/password').to(controller: 'devise/passwords', action: :update) }
  it { should route(:put, '/users/password').to(controller: 'devise/passwords', action: :update) }
  it { should route(:post, '/users/password').to(controller: 'devise/passwords', action: :create) }
  it { should route(:get, '/users/cancel').to(controller: 'devise/registrations', action: :cancel) }
  it { should route(:get, '/users/sign_up').to(controller: 'devise/registrations', action: :new) }
  it { should route(:get, '/users/edit').to(controller: 'devise/registrations', action: :edit) }
  it { should route(:patch, '/users').to(controller: 'devise/registrations', action: :update) }
  it { should route(:put, '/users').to(controller: 'devise/registrations', action: :update) }
  it { should route(:delete, '/users').to(controller: 'devise/registrations', action: :destroy) }
  it { should route(:post, '/users').to(controller: 'devise/registrations', action: :create) }
  it { should route(:get, '/users/confirmation/new').to(controller: 'devise/confirmations', action: :new) }
  it { should route(:get, '/users/confirmation').to(controller: 'devise/confirmations', action: :show) }
  it { should route(:post, '/users/confirmation').to(controller: 'devise/confirmations', action: :create) }
end
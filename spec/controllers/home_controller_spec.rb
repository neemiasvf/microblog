RSpec.describe HomeController, type: :controller do
  it { should route(:get, '/').to(controller: :home, action: :index) }
  it { should route(:get, '/about').to(controller: :home, action: :about) }
end
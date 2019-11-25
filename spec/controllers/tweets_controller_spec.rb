RSpec.describe TweetsController, type: :controller do
  it { should use_before_action(:set_tweet) }
  it { should use_before_action(:authenticate_user!) }

  it do
    params = { tweet: { content: 'test', user_id: 1 } }
    should permit(:content, :user_id).for(:create, params: params).on(:tweet)
  end

  it { should route(:get, '/tweets').to(controller: :tweets, action: :index) }
  it { should route(:post, '/tweets').to(controller: :tweets, action: :create) }
  it { should route(:get, '/tweets/new').to(controller: :tweets, action: :new) }
  it { should route(:get, '/tweets/1/edit').to(controller: :tweets, action: :edit, id: 1) }
  it { should route(:patch, '/tweets/1').to(controller: :tweets, action: :update, id: 1) }
  it { should route(:put, '/tweets/1').to(controller: :tweets, action: :update, id: 1) }
  it { should route(:delete, '/tweets/1').to(controller: :tweets, action: :destroy, id: 1) }
end
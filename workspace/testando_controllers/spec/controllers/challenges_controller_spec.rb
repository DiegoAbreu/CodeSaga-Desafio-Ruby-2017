require 'rails_helper'

describe ChallengesController, type: :controller do
  it 'creates a challenge with valid params' do
    post :create, { :challenge => { :name => "Testando" , :description => "controllers",
       :code_points => 45 }}
  expect(assigns(:challenge)).to be_valid
end

  it 'render new when invalid params' do
    get :new
    expect(response).to render_template('new')
  end
  
  # experimente criar outros cenarios se achar interessante ;)
end

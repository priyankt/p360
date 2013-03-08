Admin.controllers :agents do

  get :index do
    @agents = Agent.all
    render 'agents/index'
  end

  get :new do
    @agent = Agent.new
    render 'agents/new'
  end

  post :create do
    @agent = Agent.new(params[:agent])
    if @agent.save
      flash[:notice] = 'Agent was successfully created.'
      redirect url(:agents, :edit, :id => @agent.id)
    else
      render 'agents/new'
    end
  end

  get :edit, :with => :id do
    @agent = Agent.get(params[:id])
    render 'agents/edit'
  end

  put :update, :with => :id do
    @agent = Agent.get(params[:id])
    if @agent.update(params[:agent])
      flash[:notice] = 'Agent was successfully updated.'
      redirect url(:agents, :edit, :id => @agent.id)
    else
      render 'agents/edit'
    end
  end

  delete :destroy, :with => :id do
    agent = Agent.get(params[:id])
    if agent.destroy
      flash[:notice] = 'Agent was successfully destroyed.'
    else
      flash[:error] = 'Unable to destroy Agent!'
    end
    redirect url(:agents, :index)
  end
end

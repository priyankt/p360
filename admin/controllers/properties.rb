Admin.controllers :properties do

  get :index do
    @properties = Property.all
    render 'properties/index'
  end

  get :new do
    @property = Property.new
    render 'properties/new'
  end

  post :create do
    @property = Property.new(params[:property])
    if @property.save
      flash[:notice] = 'Property was successfully created.'
      redirect url(:properties, :edit, :id => @property.id)
    else
      render 'properties/new'
    end
  end

  get :edit, :with => :id do
    @property = Property.get(params[:id])
    render 'properties/edit'
  end

  put :update, :with => :id do
    @property = Property.get(params[:id])
    if @property.update(params[:property])
      flash[:notice] = 'Property was successfully updated.'
      redirect url(:properties, :edit, :id => @property.id)
    else
      render 'properties/edit'
    end
  end

  delete :destroy, :with => :id do
    property = Property.get(params[:id])
    if property.destroy
      flash[:notice] = 'Property was successfully destroyed.'
    else
      flash[:error] = 'Unable to destroy Property!'
    end
    redirect url(:properties, :index)
  end
end
